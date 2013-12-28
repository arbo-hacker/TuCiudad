<?php

/************************************************************************/
/* PHP-NUKE: Web Portal System                                          */
/* ===========================                                          */
/*                                                                      */
/* Copyright (c) 2002 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* This program is free software. You can redistribute it and/or modify */
/* it under the terms of the GNU General Public License as published by */
/* the Free Software Foundation; either version 2 of the License.       */
/************************************************************************/
/*         Additional security & Abstraction layer conversion           */
/*                           2003 chatserv                              */
/*      http://www.nukefixes.com -- http://www.nukeresources.com        */
/************************************************************************/

if (!eregi("modules.php", $_SERVER['SCRIPT_NAME'])) {
	die ("You can't access this file directly...");
}
require_once("mainfile.php");
$module_name = basename(dirname(__FILE__));
get_lang($module_name);

function format_url($comment) {
    global $nukeurl;
    unset($location);
    $comment = $comment;
    $links = array();
    $hrefs = array();
    $pos = 0;
    while (!(($pos = strpos($comment,"<",$pos)) === false)) {
	$pos++;
	$endpos = strpos($comment,">",$pos);
	$tag = substr($comment,$pos,$endpos-$pos);
	$tag = trim($tag);
	if (isset($location)) {
    	    if (!strcasecmp(strtok($tag," "),"/A")) {
        	$link = substr($comment,$linkpos,$pos-1-$linkpos);
        	$links[] = $link;
        	$hrefs[] = $location;
        	unset($location);
    	    }
	    $pos = $endpos+1;
	} else {
	    if (!strcasecmp(strtok($tag," "),"A")) {
		if (eregi("HREF[ \t\n\r\v]*=[ \t\n\r\v]*\"([^\"]*)\"",$tag,$regs));
		else if (eregi("HREF[ \t\n\r\v]*=[ \t\n\r\v]*([^ \t\n\r\v]*)",$tag,$regs));
		else $regs[1] = "";
		if ($regs[1]) {
	    	    $location = $regs[1];
		}
		$pos = $endpos+1;
		$linkpos = $pos;
	    } else {
		$pos = $endpos+1;
	    }
	}
    }
    for ($i=0; $i<sizeof($links); $i++) {
	if (!eregi("http://", $hrefs[$i])) {
	    $hrefs[$i] = $nukeurl;
	} elseif (!eregi("mailto://", $hrefs[$i])) {
	    $href = explode("/",$hrefs[$i]);
	    $href = " [$href[2]]";
	    $comment = ereg_replace(">$links[$i]</a>", "title='$hrefs[$i]'> $links[$i]</a>$href", $comment);
	}
    }
    return($comment);
}

function modone() {
    global $admin, $moderate, $module_name;
    if(((isset($admin)) && ($moderate == 1)) || ($moderate==2)) echo "<form action=\"modules.php?name=$module_name&file=comments\" method=\"post\">";
}

function modtwo($tid, $score, $reason) {
    global $admin, $user, $moderate, $reasons;
    if((((isset($admin)) && ($moderate == 1)) || ($moderate == 2)) && ($user)) {
	echo " | <select name=dkn$tid>";
	for($i=0; $i<sizeof($reasons); $i++) {
	    echo "<option value=\"$score:$i\">$reasons[$i]</option>\n";
	}
	echo "</select>";
    }
}

function modthree($sid, $mode, $order, $thold=0) {
    global $admin, $user, $moderate;
    if((((isset($admin)) && ($moderate == 1)) || ($moderate==2)) && ($user)) echo "<center><input type=hidden name=sid value=$sid><input type=hidden name=mode value=$mode><input type=hidden name=order value=$order><input type=hidden name=thold value=$thold>
    <input type=hidden name=op value=moderate>
    <input type=image src=images/menu/moderate.gif border=0></form></center>";
}

function nocomm() {
    OpenTable();
    echo "<center><font class=\"content\">"._NOCOMMENTSACT."</font></center>";
    CloseTable();
}

function navbar($sid, $title, $thold, $mode, $order) {
    global $user, $bgcolor1, $bgcolor2, $textcolor1, $textcolor2, $anonpost, $prefix, $db, $module_name;
    $query = $db->sql_query("SELECT * FROM ".$prefix."_comments WHERE sid='$sid'");
    if(!$query) {
	$count = 0;
    } else {
	$count = $db->sql_numrows($query);
    }
    if(!isset($thold)) {
	$thold=0;
    }
    echo "\n\n<!-- COMMENTS NAVIGATION BAR START -->\n\n";
    OpenTable();
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\">\n";
    if($title) {
	echo "<tr><td bgcolor=\"$bgcolor2\" align=\"center\"><font class=\"content\" color=\"$textcolor1\">\"$title\" | ";
	if(is_user($user)) {
	    echo "<a href=\"modules.php?name=Your_Account&amp;op=editcomm\"><font color=\"$textcolor1\">"._CONFIGURE."</font></a>";
	} else {
	    echo "<a href=\"modules.php?name=Your_Account\"><font color=\"$textcolor1\">"._LOGINCREATE."</font></a>";
	}
	if(($count==1)) {
	    echo " | <B>$count</B> "._COMMENT."";
	} else {
	    echo " | <B>$count</B> "._COMMENTS."";
	}
	if ($count > 0 AND is_active("Search")) {
	    echo " | <a href='modules.php?name=Search&type=comments&sid=$sid'>"._SEARCHDIS."</a>";
	}
	echo "</font></td></tr>\n";
    }
    echo "<tr><td bgcolor=\"$bgcolor1\" align=\"center\" width=\"100%\">\n";
    if ($anonpost==1 OR is_admin($admin) OR is_user($user)) {
		echo "<form action=\"modules.php?name=$module_name&amp;file=comments\" method=\"post\">"
		    ."<input type=\"hidden\" name=\"pid\" value=\"$pid\">"
		    ."<input type=\"hidden\" name=\"sid\" value=\"$sid\">"
		    ."<input type=\"hidden\" name=\"op\" value=\"Reply\">"
		    ."<input type=\"submit\" value=\""._REPLYMAIN."\"></td></form></tr>";
    }
    echo "<tr><td bgcolor=\"$bgcolor2\" align=\"center\"><font class=\"tiny\">"._COMMENTSWARNING."</font></td></tr></table>"
	."\n\n<!-- COMMENTS NAVIGATION BAR END -->\n\n";
    CloseTable();
    if ($anonpost == 0 AND !is_user($user)) {
        echo "<br>";
	OpenTable();
	echo "<center>"._NOANONCOMMENTS."</center>";
	CloseTable();
    }
}

function DisplayKids ($tid, $mode, $order=0, $thold=0, $level=0, $dummy=0, $tblwidth=99) {
    global $datetime, $user, $cookie, $bgcolor1, $reasons, $anonymous, $anonpost, $commentlimit, $prefix, $textcolor2, $db, $module_name;
    $comments = 0;
    cookiedecode($user);
    $result = $db->sql_query("SELECT tid, pid, sid, date, name, email, host_name, subject, comment, score, reason FROM ".$prefix."_comments WHERE pid='$tid' ORDER BY date, tid");
    if ($mode == 'nested') {
	/* without the tblwidth variable, the tables run of the screen with netscape */
	/* in nested mode in long threads so the text can't be read. */
	while ($row = $db->sql_fetchrow($result)) {
	    $r_tid = intval($row['tid']);
	    $r_pid = intval($row['pid']);
	    $r_sid = intval($row['sid']);
	    $r_date = $row['date'];
	    $r_name = stripslashes($row['name']);
	    $r_email = stripslashes($row['email']);
	    $r_host_name = $row['host_name'];
	    $r_subject = stripslashes(check_html($row['subject'], "nohtml"));
	    $r_comment = stripslashes($row['comment']);
	    $r_score = intval($row['score']);
	    $r_reason = intval($row['reason']);
	    if($r_score >= $thold) {
		if (!isset($level)) {
		} else {
		    if (!$comments) {
			echo "<ul>";
			$tblwidth -= 5;
		    }
		}
		$comments++;
		if (!eregi("[a-z0-9]",$r_name)) $r_name = $anonymous;
		if (!eregi("[a-z0-9]",$r_subject)) $r_subject = "["._NOSUBJECT."]";
		// HIJO enter hex color between first two appostrophe for second alt bgcolor
		$r_bgcolor = ($dummy%2)?"":"#E6E6D2";
		echo "<a name=\"$r_tid\">";
		echo "<table border=\"0\"><tr bgcolor=\"$bgcolor1\"><td>";
		formatTimestamp($r_date);
		if ($r_email) {
		    echo "<b>$r_subject</b> <font class=\"content\">";
		    if(!$cookie[7]) {
			echo "("._SCORE." $r_score";
			if($r_reason>0) echo ", $reasons[$r_reason]";
			echo ")";
		    }
		    echo "<br>"._BY." <a href=\"mailto:$r_email\">$r_name</a> <font class=\"content\"><b>($r_email)</b></font> "._ON." $datetime";
		} else {
		    echo "<b>$r_subject</b> <font class=\"content\">";
		    if(!$cookie[7]) {
			echo "("._SCORE." $r_score";
			if($r_reason>0) echo ", $reasons[$r_reason]";
			echo ")";
		    }
		    echo "<br>"._BY." $r_name "._ON." $datetime";
		}			
		if ($r_name != $anonymous) { 
		    $row2 = $db->sql_fetchrow($db->sql_query("SELECT user_id FROM ".$prefix."_users WHERE username='$r_name'"));
		    $r_uid = intval($row2['user_id']);
		    echo "<br>(<a href=\"modules.php?name=Your_Account&amp;op=userinfo&amp;username=$r_name\">"._USERINFO."</a> | <a href=\"modules.php?name=Private_Messages&amp;mode=post&amp;u=$r_uid\">"._SENDAMSG."</a>) ";
		}
		$row_url = $db->sql_fetchrow($db->sql_query("SELECT user_website FROM ".$prefix."_users WHERE username='$r_name'"));
		$url = stripslashes($row_url['user_website']);
		if ($url != "http://" AND $url != "" AND eregi("http://", $url)) { echo "<a href=\"$url\" target=\"new\">$url</a> "; }
		echo "</font></td></tr><tr><td>";
		if(($cookie[10]) && (strlen($r_comment) > $cookie[10])) echo substr("$r_comment", 0, $cookie[10])."<br><br><b><a href=\"modules.php?name=$module_name&amp;file=comments&amp;sid=$r_sid&amp;tid=$r_tid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._READREST."</a></b>";
		elseif(strlen($r_comment) > $commentlimit) echo substr("$r_comment", 0, $commentlimit)."<br><br><b><a href=\"modules.php?name=$module_name&amp;file=comments&amp;sid=$r_sid&amp;tid=$r_tid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._READREST."</a></b>";
		else echo $r_comment;
		echo "</td></tr></table><br><br>";
		if ($anonpost==1 OR is_admin($admin) OR is_user($user)) {
		    echo "<font class=\"content\" color=\"$textcolor2\"> [ <a href=\"modules.php?name=$module_name&amp;file=comments&amp;op=Reply&amp;pid=$r_tid&amp;sid=$r_sid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._REPLY."</a>";
		}
		modtwo($r_tid, $r_score, $r_reason);
		echo " ]</font><br><br>";
		DisplayKids($r_tid, $mode, $order, $thold, $level+1, $dummy+1, $tblwidth);
	    }
	}
	} elseif ($mode == 'flat') {
	    while ($row = $db->sql_fetchrow($result)) {
		$r_tid = intval($row['tid']);
		$r_pid = intval($row['pid']);
		$r_sid = intval($row['sid']);
		$r_date = $row['date'];
		$r_name = stripslashes($row['name']);
		$r_email = stripslashes($row['email']);
		$r_host_name = $row['host_name'];
		$r_subject = stripslashes(check_html($row['subject'], "nohtml"));
		$r_comment = stripslashes($row['comment']);
		$r_score = intval($row['score']);
		$r_reason = intval($row['reason']);
		if($r_score >= $thold) {
		    if (!eregi("[a-z0-9]",$r_name)) $r_name = $anonymous;
		    if (!eregi("[a-z0-9]",$r_subject)) $r_subject = "["._NOSUBJECT."]";
		    echo "<a name=\"$r_tid\">";
		    echo "<hr><table width=\"99%\" border=\"0\"><tr bgcolor=\"$bgcolor1\"><td>";
		    formatTimestamp($r_date);
		    if ($r_email) {
			echo "<b>$r_subject</b> <font class=\"content\">";
			if(!$cookie[7]) {
			    echo "("._SCORE." $r_score";
			    if($r_reason>0) echo ", $reasons[$r_reason]";
			    echo ")";
			}
			echo "<br>"._BY." <a href=\"mailto:$r_email\">$r_name</a> <font class=\"content\"><b>($r_email)</b></font> "._ON." $datetime";
 		    } else {
			echo "<b>$r_subject</b> <font class=\"content\">";
			if(!$cookie[7]) {
			    echo "("._SCORE." $r_score";
			    if($r_reason>0) echo ", $reasons[$r_reason]";
			    echo ")";
			}
			echo "<br>"._BY." $r_name "._ON." $datetime";
		    }			
		    if ($r_name != $anonymous) {
			$row3 = $db->sql_fetchrow($db->sql_query("SELECT user_id FROM ".$prefix."_users WHERE username='$r_name'"));
			$ruid = intval($row3['user_id']);
			echo "<br>(<a href=\"modules.php?name=Your_Account&amp;op=userinfo&amp;username=$r_name\">"._USERINFO."</a> | <a href=\"modules.php?name=Private_Messages&amp;mode=post&amp;u=$ruid\">"._SENDAMSG."</a>) ";
		    }
		    $row_url2 = $db->sql_fetchrow($db->sql_query("SELECT user_website FROM ".$prefix."_users WHERE username='$r_name'"));
		    $url = stripslashes($row_url2['user_website']);
		    if ($url != "http://" AND $url != "" AND eregi("http://", $url)) { echo "<a href=\"$url\" target=\"new\">$url</a> "; }
		    echo "</font></td></tr><tr><td>";
		    if(($cookie[10]) && (strlen($r_comment) > $cookie[10])) echo substr("$r_comment", 0, $cookie[10])."<br><br><b><a href=\"modules.php?name=$module_name&amp;file=comments&amp;sid=$r_sid&amp;tid=$r_tid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._READREST."</a></b>";
		    elseif(strlen($r_comment) > $commentlimit) echo substr("$r_comment", 0, $commentlimit)."<br><br><b><a href=\"modules.php?name=$module_name&amp;file=comments&amp;sid=$r_sid&amp;tid=$r_tid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._READREST."</a></b>";
		    else echo $r_comment;
		    echo "</td></tr></table><br><br>";
		    if ($anonpost==1 OR is_admin($admin) OR is_user($user)) {
			echo "<font class=\"content\" color=\"$textcolor2\"> [ <a href=\"modules.php?name=$module_name&amp;file=comments&amp;op=Reply&amp;pid=$r_tid&amp;sid=$r_sid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._REPLY."</a>";
		    }
		    modtwo($r_tid, $r_score, $r_reason);
		    echo " ]</font><br><br>";
		    DisplayKids($r_tid, $mode, $order, $thold);
		}
	    }
	} else {
    	    while ($row = $db->sql_fetchrow($result)) {
		$r_tid = intval($row['tid']);
		$r_pid = intval($row['pid']);
		$r_sid = intval($row['sid']);
		$r_date = $row['date'];
		$r_name = stripslashes($row['name']);
		$r_email = stripslashes($row['email']);
		$r_host_name = $row['host_name'];
		$r_subject = stripslashes(check_html($row['subject'], "nohtml"));
		$r_comment = stripslashes($row['comment']);
		$r_score = intval($row['score']);
		$r_reason = intval($row['reason']);
		if($r_score >= $thold) {
		    if (!isset($level)) {
		    } else {
			if (!$comments) {
			    echo "<ul>";
			}
		    }
		    $comments++;
		    if (!eregi("[a-z0-9]",$r_name)) $r_name = $anonymous;
		    if (!eregi("[a-z0-9]",$r_subject)) $r_subject = "["._NOSUBJECT."]";
		    formatTimestamp($r_date);
		    echo "<li><font class=\"content\" color=\"$textcolor2\"><a href=\"modules.php?name=$module_name&amp;file=comments&amp;op=showreply&amp;tid=$r_tid&amp;sid=$r_sid&amp;pid=$r_pid&amp;mode=$mode&amp;order=$order&amp;thold=$thold#$r_tid\">$r_subject</a> "._BY." $r_name "._ON." $datetime</font><br>";
		    DisplayKids($r_tid, $mode, $order, $thold, $level+1, $dummy+1);
		}
	    }
	}
    if ($level && $comments) {
        echo "</ul>";
    }
}

function DisplayBabies ($tid, $level=0, $dummy=0) {
    global $datetime, $anonymous, $prefix, $db, $module_name;
    $comments = 0;
    $result = $db->sql_query("SELECT tid, pid, sid, date, name, email, host_name, subject, comment, score, reason FROM ".$prefix."_comments WHERE pid='$tid' ORDER BY date, tid");
    while ($row = $db->sql_fetchrow($result)) {
        $r_tid = intval($row['tid']);
        $r_pid = intval($row['pid']);
        $r_sid = intval($row['sid']);
        $r_date = $row['date'];
        $r_name = stripslashes($row['name']);
        $r_email = stripslashes($row['email']);
        $r_host_name = $row['host_name'];
        $r_subject = stripslashes(check_html($row['subject'], "nohtml"));
        $r_comment = stripslashes($row['comment']);
        $r_score = intval($row['score']);
        $r_reason = intval($row['reason']);
	if (!isset($level)) {
	} else {
	    if (!$comments) {
		echo "<ul>";
	    }
	}
	$comments++;
	if (!eregi("[a-z0-9]",$r_name)) { $r_name = $anonymous; }
	if (!eregi("[a-z0-9]",$r_subject)) { $r_subject = "["._NOSUBJECT."]"; }
	formatTimestamp($r_date);
	echo "<a href=\"modules.php?name=$module_name&amp;file=comments&amp;op=showreply&amp;tid=$r_tid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">$r_subject</a></font><font class=\"content\"> "._BY." $r_name "._ON." $datetime<br>";
	DisplayBabies($r_tid, $level+1, $dummy+1);
    } 
    if ($level && $comments) {
    	echo "</ul>";
    }
}

function DisplayTopic ($sid, $pid=0, $tid=0, $mode="thread", $order=0, $thold=0, $level=0, $nokids=0) {
    global $hr, $user, $datetime, $cookie, $mainfile, $admin, $commentlimit, $anonymous, $reasons, $anonpost, $foot1, $foot2, $foot3, $foot4, $prefix, $acomm, $articlecomm, $db, $module_name, $nukeurl;
    if($mainfile) {
	global $title, $bgcolor1, $bgcolor2, $bgcolor3;
    } else {
	global $title, $bgcolor1, $bgcolor2, $bgcolor3;
	include("mainfile.php");
	include("header.php");
    }
    if ($pid!=0) {
	include("header.php");
    }
    $count_times = 0;
    cookiedecode($user);
    $q = "SELECT tid, pid, sid, date, name, email, host_name, subject, comment, score, reason FROM ".$prefix."_comments WHERE sid='$sid' and pid='$pid'";
    if($thold != "") {
	$q .= " AND score>='$thold'";
    } else {
	$q .= " AND score>='0'";
    }
    if ($order==1) $q .= " ORDER BY date DESC";
    if ($order==2) $q .= " ORDER BY score DESC";
    $something = $db->sql_query($q);
    $num_tid = $db->sql_numrows($something);
    if ($acomm == 1) {
      nocomm(); 
      return;
    }
    if (($acomm == 0) AND ($articlecomm == 1)) {
	navbar($sid, $title, $thold, $mode, $order);
    }
    modone();
    while ($count_times < $num_tid) {
	echo "<br>";
	OpenTable();
	$row_q = $db->sql_fetchrow($something);
	$tid = intval($row_q['tid']);
	$pid = intval($row_q['pid']);
	$sid = intval($row_q['sid']);
	$date = $row_q['date'];
	$c_name = stripslashes($row_q['name']);
	$email = stripslashes($row_q['email']);
	$host_name = $row_q['host_name'];
	$subject = stripslashes(check_html($row_q['subject'], "nohtml"));
	$comment = stripslashes($row_q['comment']);
	$score = intval($row_q['score']);
	$reason = intval($row_q['reason']);
	if ($c_name == "") { $c_name = $anonymous; }
	if ($subject == "") { $subject = "["._NOSUBJECT."]"; }	
	echo "<a name=\"$tid\"></a>";
	echo "<table width=\"99%\" border=\"0\"><tr bgcolor=\"$bgcolor1\"><td width=\"500\">";
	formatTimestamp($date);
	if ($email) {
	    echo "<b>$subject</b> <font class=\"content\">";
	    if(!$cookie[7]) {
		echo "("._SCORE." $score";
		if($reason>0) echo ", $reasons[$reason]";
		echo ")";
	    }
	    echo "<br>"._BY." <a href=\"mailto:$email\">$c_name</a> <b>($email)</b> "._ON." $datetime"; 
	} else {
	    echo "<b>$subject</b> <font class=\"content\">";
	    if(!$cookie[7]) {
		echo "("._SCORE." $score";
		if($reason>0) echo ", $reasons[$reason]";
		echo ")";
	    }
	    echo "<br>"._BY." $c_name "._ON." $datetime";
	}			
		
    /* If you are admin you can see the Poster IP address */
    /* with this you can see who is flaming you...*/

	if (is_active("Journal")) {
	    $row = $db->sql_fetchrow($db->sql_query("SELECT jid FROM ".$prefix."_journal WHERE aid='$c_name' AND status='yes' ORDER BY pdate,jid DESC LIMIT 0,1"));
	    $jid = intval($row['jid']);
	    if ($jid != "" AND isset($jid)) {
		$journal = " | <a href=\"modules.php?name=Journal&amp;file=display&amp;jid=$jid\">"._JOURNAL."</a>";
	    } else {
		$journal = "";
	    }
	}
	if ($c_name != $anonymous) {
	    $row2 = $db->sql_fetchrow($db->sql_query("SELECT user_id FROM ".$prefix."_users WHERE username='$c_name'"));
	    $r_uid = intval($row2['user_id']);
	    echo "<br>(<a href=\"modules.php?name=Your_Account&amp;op=userinfo&amp;username=$c_name\">"._USERINFO."</a> | <a href=\"modules.php?name=Private_Messages&amp;mode=post&amp;u=$r_uid\">"._SENDAMSG."</a>$journal) ";
	}
	$row_url = $db->sql_fetchrow($db->sql_query("SELECT user_website FROM ".$prefix."_users WHERE username='$c_name'"));
	$url = stripslashes($row_url['user_website']);
	if ($url != "http://" AND $url != "" AND eregi("http://", $url)) { echo "<a href=\"$url\" target=\"new\">$url</a> "; }

	if(is_admin($admin)) {
	    $row3 = $db->sql_fetchrow($db->sql_query("SELECT host_name FROM ".$prefix."_comments WHERE tid='$tid'"));
	    $host_name = $row3['host_name'];
	    echo "<br><b>(IP: $host_name)</b>";
	}
	echo "</font></td></tr><tr><td>";
	if(($cookie[10]) && (strlen($comment) > $cookie[10])) echo substr("$comment", 0, $cookie[10])."<br><br><b><a href=\"modules.php?name=$module_name&amp;file=comments&amp;sid=$sid&tid=$tid&mode=$mode&order=$order&thold=$thold\">"._READREST."</a></b>";
	elseif(strlen($comment) > $commentlimit) echo substr("$comment", 0, $commentlimit)."<br><br><b><a href=\"modules.php?name=$module_name&amp;file=comments&amp;sid=$sid&tid=$tid&mode=$mode&order=$order&thold=$thold\">"._READREST."</a></b>";
	else echo $comment;
	echo "</td></tr></table><br><br>";
	if ($anonpost==1 OR is_admin($admin) OR is_user($user)) {
	    echo "<font class=\"content\"> [ <a href=\"modules.php?name=$module_name&amp;file=comments&amp;op=Reply&amp;pid=$tid&amp;sid=$sid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._REPLY."</a>";
	}
	if ($pid != 0) {
	    $row4 = $db->sql_fetchrow($db->sql_query("SELECT pid FROM ".$prefix."_comments WHERE tid='$pid'"));
	    $erin = intval($row4['pid']);
	    echo " | <a href=\"modules.php?name=$module_name&amp;file=comments&amp;sid=$sid&amp;pid=$erin&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._PARENT."</a>";
	}
	modtwo($tid, $score, $reason);
		
	if(is_admin($admin)) {
	    echo " | <a href=\"admin.php?op=RemoveComment&amp;tid=$tid&amp;sid=$sid\">"._DELETE."</a> ]</font><br><br>";
	} elseif ($anonpost != 0 OR is_admin($admin) OR is_user($user)) {
	    echo " ]</font><br><br>";
	}
		
	DisplayKids($tid, $mode, $order, $thold, $level);
	echo "</ul>";
	if($hr) echo "<hr noshade size=\"1\">";
	$count_times += 1;
	CloseTable();
    }
    modthree($sid, $mode, $order, $thold);
    if ($pid==0) {
	return array($sid, $pid, $subject);

    } else {
	include("footer.php");
    }
}

function singlecomment($tid, $sid, $mode, $order, $thold) {
    global $module_name, $user, $cookie, $datetime, $bgcolor1, $bgcolor2, $bgcolor3, $bgcolor4, $admin, $anonpost, $prefix, $textcolor2, $db;
    include("header.php");
    $row = $db->sql_fetchrow($db->sql_query("SELECT date, name, email, subject, comment, score, reason FROM ".$prefix."_comments WHERE tid='$tid' AND sid='$sid'"));
    $date = $row['date'];
    $name = stripslashes($row['name']);
    $email = stripslashes($row['email']);
    $subject = stripslashes(check_html($row['subject'], "nohtml"));
    $comment = stripslashes($row['comment']);
    $score = intval($row['score']);
    $reason = intval($row['reason']);
    $titlebar = "<b>$subject</b>";
    if($name == "") $name = $anonymous;
    if($subject == "") $subject = "["._NOSUBJECT."]";
    modone();
    OpenTable();
    echo "<table width=\"99%\" border=\"0\"><tr bgcolor=\"$bgcolor1\"><td width=\"500\">";
    formatTimestamp($date);
    if($email) echo "<b>$subject</b> <font class=\"content\" color=\"$textcolor2\">("._SCORE." $score)<br>"._BY." <a href=\"mailto:$email\"><font color=\"$bgcolor2\">$name</font></a> <font class=content><b>($email)</b></font> "._ON." $datetime";
    else echo "<b>$subject</b> <font class=content>("._SCORE." $score)<br>"._BY." $name "._ON." $datetime";
    echo "</td></tr><tr><td>$comment</td></tr></table><br><br>";
    if ($anonpost==1 OR is_admin($admin) OR is_user($user)) {
	echo "<font class=content> [ <a href=\"modules.php?name=$module_name&amp;file=comments&amp;op=Reply&amp;pid=$tid&amp;sid=$sid&amp;mode=$mode&amp;order=$order&amp;thold=$thold\">"._REPLY."</a> | <a href=\"modules.php?name=$module_name&amp;file=article&amp;sid=$sid&mode=$mode&order=$order&thold=$thold\">"._ROOT."</a>";
    }
    modtwo($tid, $score, $reason);
    echo " ]";
    modthree($sid, $mode, $order, $thold);
    CloseTable();
    include("footer.php");
}

function reply($pid, $sid, $mode, $order, $thold) {
    include("config.php");
    include("header.php");
    global $module_name, $user, $cookie, $datetime, $bgcolor1, $bgcolor2, $bgcolor3, $db, $anonpost;
    if ($anonpost == 0 AND !is_user($user)) {
	OpenTable();
	echo "<center><font class=title><b>"._COMMENTREPLY."</b></font></center>";
	CloseTable();
	echo "<br>";
	OpenTable();
	echo "<center>"._NOANONCOMMENTS."<br><br>"._GOBACK."</center>";
	CloseTable();
    } else {
	if ($pid != 0) {
	    $row = $db->sql_fetchrow($db->sql_query("SELECT date, name, email, subject, comment, score FROM ".$prefix."_comments WHERE tid='$pid'"));
    	    $date = $row['date'];
	    $name = stripslashes($row['name']);
	    $email = stripslashes($row['email']);
	    $subject = stripslashes(check_html($row['subject'], "nohtml"));
	    $comment = stripslashes($row['comment']);
	    $score = intval($row['score']);
	} else {
	    $row2 = $db->sql_fetchrow($db->sql_query("SELECT time, title, hometext, bodytext, informant, notes FROM ".$prefix."_stories WHERE sid='$sid'"));
    	    $date = $row2['time'];
	    $subject = stripslashes(check_html($row2['title'], "nohtml"));
	    $temp_comment = stripslashes($row2['hometext']);
	    $comment2 = stripslashes($row2['bodytext']);
	    $name = stripslashes($row2['informant']);
	    $notes = stripslashes($row2['notes']);
	}
	if($comment == "") {
	    $comment = "$temp_comment<br><br>$comment2";
	}
	OpenTable();
	echo "<center><font class=title><b>"._COMMENTREPLY."</b></font></center>";
	CloseTable();
	echo "<br>";
	OpenTable();
	if ($name == "") $name = $anonymous;
	if ($subject == "") $subject = "["._NOSUBJECT."]";
	formatTimestamp($date);
	echo "<b>$subject</b> <font class=\"content\">";
	if (!$temp_comment) echo"("._SCORE." $score)";
	if ($email) {
	    echo "<br>"._BY." <a href=\"mailto:$email\">$name</a> <font class=\"content\"><b>($email)</b></font> "._ON." $datetime";
	} else {
	    echo "<br>"._BY." $name "._ON." $datetime";
	}
	echo "<br><br>$comment<br><br>";
	if ($pid == 0) {
	    if ($notes != "") {
		echo "<b>"._NOTE."</b> <i>$notes</i><br><br>";
	    } else {
		echo "";
	    }
	}
	if (!isset($pid) || !isset($sid)) { echo "Something is not right. This message is just to keep things from messing up down the road"; exit(); }
	if ($pid == 0) {
	    $row3 = $db->sql_fetchrow($db->sql_query("SELECT title FROM ".$prefix."_stories WHERE sid='$sid'"));
	    $subject = stripslashes(check_html($row3['title'], "nohtml"));
	} else {
	    $row4 = $db->sql_fetchrow($db->sql_query("SELECT subject FROM ".$prefix."_comments WHERE tid='$pid'"));
	    $subject = stripslashes(check_html($row4['subject'], "nohtml"));
	}
	CloseTable();
	echo "<br>";
	OpenTable();
	echo "<form action=\"modules.php?name=$module_name&amp;file=comments\" method=\"post\">";
	echo "<font class=option><b>"._YOURNAME.":</b></font> ";
	if (is_user($user)) {
	    cookiedecode($user);
	    echo "<a href=\"modules.php?name=Your_Account\">$cookie[1]</a> <font class=\"content\">[ <a href=\"modules.php?name=Your_Account&amp;op=logout\">"._LOGOUT."</a> ]</font><br><br>";
	} else {
    	    echo "<font class=\"content\">$anonymous";
	    echo " [ <a href=\"modules.php?name=Your_Account\">"._NEWUSER."</a> ]<br><br>";
	}
	echo "<font class=\"option\"><b>"._SUBJECT.":</b></font><br>";
	if (!eregi("Re:",$subject)) $subject = "Re: ".substr($subject,0,81)."";
	echo "<input type=\"text\" name=\"subject\" size=\"50\" maxlength=\"85\" value=\"$subject\"><br><br>";
	echo "<font class=\"option\"><b>"._UCOMMENT.":</b></font><br>"
	    ."<textarea wrap=\"virtual\" cols=\"50\" rows=\"10\" name=\"comment\"></textarea><br>"
	    ."<font class=\"content\">"._ALLOWEDHTML."<br>";
	while (list($key,)= each($AllowableHTML)) echo " &lt;".$key."&gt;";
	echo "<br>";
	if (is_user($user) AND ($anonpost == 1)) { echo "<input type=\"checkbox\" name=\"xanonpost\"> "._POSTANON."<br>"; }
	echo "<input type=\"hidden\" name=\"pid\" value=\"$pid\">\n"
    	    ."<input type=\"hidden\" name=\"sid\" value=\"$sid\">\n"
	    ."<input type=\"hidden\" name=\"mode\" value=\"$mode\">\n"
	    ."<input type=\"hidden\" name=\"order\" value=\"$order\">\n"
	    ."<input type=\"hidden\" name=\"thold\" value=\"$thold\">\n"
	    ."<input type=\"submit\" name=\"op\" value=\""._PREVIEW."\">\n"
	    ."<input type=\"submit\" name=\"op\" value=\""._OK."\">\n"
	    ."<select name=\"posttype\">\n"
	    ."<option value=\"exttrans\">"._EXTRANS."</option>\n"
	    ."<option value=\"html\" >"._HTMLFORMATED."</option>\n"
	    ."<option value=\"plaintext\" selected>"._PLAINTEXT."</option>\n"
	    ."</select></font></form>\n";
	CloseTable();
    }
    include("footer.php");
}

function replyPreview ($pid, $sid, $subject, $comment, $xanonpost, $mode, $order, $thold, $posttype) {
    include("header.php");
    global $module_name, $user, $cookie, $AllowableHTML, $anonymous, $anonpost;
    if ((eregi("<[^>]*script*\"?[^>]>", $comment))) {
   die ("<center><img src=images/logo.gif><br><br><b>The script html tag is not allowed</b><br><br>[ <a href=\"javascript:history.go(-1)\"><b>Go Back</b></a> ]");
    }
    OpenTable();
    echo "<center><font class=\"title\"><b>"._COMREPLYPRE."</b></font></center>";
    CloseTable();
    echo "<br>";
    OpenTable();
    cookiedecode($user);
    $subject = stripslashes(check_html($subject, "nohtml"));
    $comment = stripslashes($comment);
    if (!isset($pid) || !isset($sid)) {
        echo ""._NOTRIGHT."";
        exit();
    }
    echo "<b>$subject</b>";
    echo "<br><font class=\"content\">"._BY." ";
    if (is_user($user)) {
	echo "$cookie[1]";
    } else {
        echo "$anonymous";
    }
    echo " "._ONN."</font><br><br>";
    if ($posttype=="exttrans") {
        echo nl2br(htmlspecialchars($comment));
    } elseif ($posttype=="plaintext") {
        echo nl2br($comment);
    } else {
        echo $comment;
    }
    CloseTable();
    echo "<br>";
    OpenTable();
    echo "<form action=\"modules.php?name=$module_name&amp;file=comments\" method=\"post\"><font class=\"option\"><b>"._YOURNAME.":</b></font> ";
    if (is_user($user)) {
        echo "<a href=\"modules.php?name=Your_Account\">$cookie[1]</a> <font class=\"content\">[ <a href=\"modules.php?name=Your_Account&amp;op=logout\">"._LOGOUT."</a> ]</font><br><br>";
    } else {
        echo "<font class=\"content\">$anonymous<br><br>";
    }
    echo "<font class=\"option\"><b>"._SUBJECT.":</b></font><br>"
	."<input type=\"text\" name=\"subject\" size=\"50\" maxlength=\"85\" value=\"$subject\"><br><br>"
	."<font class=\"option\"><b>"._UCOMMENT.":</b></font><br>"
	."<textarea wrap=\"virtual\" cols=\"50\" rows=\"10\" name=\"comment\">$comment</textarea><br>"
	."<font class=\"content\">"._ALLOWEDHTML."<br>";
    while (list($key,) = each($AllowableHTML)) echo " &lt;".$key."&gt;";
    echo "<br>";
    if (($xanonpost) AND ($anonpost == 1)){
        echo "<input type=\"checkbox\" name=\"xanonpost\" checked> "._POSTANON."<br>";
    } elseif ((is_user($user)) AND ($anonpost == 1)) {
        echo "<input type=\"checkbox\" name=\"xanonpost\"> "._POSTANON."<br>";
    }
    echo "<input type=\"hidden\" name=\"pid\" value=\"$pid\">"
        ."<input type=\"hidden\" name=\"sid\" value=\"$sid\">"
	."<input type=\"hidden\" name=\"mode\" value=\"$mode\">"
        ."<input type=\"hidden\" name=\"order\" value=\"$order\">"
	."<input type=\"hidden\" name=\"thold\" value=\"$thold\">"
        ."<input type=submit name=op value=\""._PREVIEW."\">"
        ."<input type=submit name=op value=\""._OK."\">\n"
	."<select name=\"posttype\"><option value=\"exttrans\"";
    if ($posttype=="exttrans") {
        echo " selected";
    }
    echo ">"._EXTRANS."</option>\n"
	."<OPTION value=\"html\"";;
    if ($posttype=="html") {
        echo " selected";
    }
    echo ">"._HTMLFORMATED."</option>\n"
	."<OPTION value=\"plaintext\"";
    if (($posttype!="exttrans") && ($posttype!="html")) {
        echo " selected";
    }
    echo ">"._PLAINTEXT."</option></select></font></form>";
    CloseTable();
    include("footer.php");
}

function CreateTopic ($xanonpost, $subject, $comment, $pid, $sid, $host_name, $mode, $order, $thold, $posttype) {
    global $module_name, $user, $userinfo, $EditedMessage, $cookie, $AllowableHTML, $ultramode, $prefix, $anonpost, $articlecomm, $db;
    if ((eregi("<[^>]*script*\"?[^>]>", $comment))) {
   die ("<center><img src=images/logo.gif><br><br><b>The script html tag is not allowed</b><br><br>[ <a href=\"javascript:history.go(-1)\"><b>Go Back</b></a> ]");
    }
    cookiedecode($user);
    $author = FixQuotes($author);
    $subject = FixQuotes(filter_text($subject, "nohtml"));
    $comment = format_url($comment);
    if($posttype=="exttrans") {
    	$comment = FixQuotes(nl2br(htmlspecialchars(check_words($comment))));
    } elseif($posttype=="plaintext") {
    	$comment = FixQuotes(nl2br(filter_text($comment)));
    } else {
	$comment = FixQuotes(filter_text($comment));
    }
    if(is_user($user)) {
        getusrinfo($user);
    }
    if ((is_user($user)) && (!$xanonpost)) {
	getusrinfo($user);
	$name = $userinfo[username];
	$email = $userinfo[femail];
	$url = $userinfo[user_website];
	$score = 1;
    } else {
	$name = ""; $email = ""; $url = "";
	$score = 0;
    }
    $ip = $_SERVER["REMOTE_HOST"];
    if (empty($ip)) {
        $ip = $_SERVER["REMOTE_ADDR"];
    }
    $fake = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_stories WHERE sid='$sid'"));
    $comment = trim($comment);
    $comment = stripslashes($comment);
    if (($fake == 1) AND ($articlecomm == 1)) {
	if ((($anonpost == 0) AND (is_user($user))) OR ($anonpost == 1)) {
	    $db->sql_query("INSERT INTO ".$prefix."_comments VALUES (NULL, '$pid', '$sid', now(), '$name', '$email', '$url', '$ip', '$subject', '$comment', '$score', '0')");
	    $db->sql_query("UPDATE ".$prefix."_stories SET comments=comments+1 WHERE sid='$sid'");
	    update_points(5);
	    if ($ultramode) {
    		ultramode();
	    }
	} else {
	    echo "Nice try...";
	    die();
	}
    } else {
	include("header.php");
	echo "According to my records, the topic you are trying "
	    ."to reply to does not exist. If you're just trying to be "
	    ."annoying, well then too bad.";
	include("footer.php");
	die();
    }
    if (isset($cookie[4])) { $options .= "&mode=$cookie[4]"; } else { $options .= "&mode=thread"; }
    if (isset($cookie[5])) { $options .= "&order=$cookie[5]"; } else { $options .= "&order=0"; }
    if (isset($cookie[6])) { $options .= "&thold=$cookie[6]"; } else { $options .= "&thold=0"; }
    Header("Location: modules.php?name=$module_name&file=article&sid=$sid$options");
}

switch($op) {

    case "Reply":
	reply($pid, $sid, $mode, $order, $thold);
	break;

    case ""._PREVIEW."":
	replyPreview ($pid, $sid, $subject, $comment, $xanonpost, $mode, $order, $thold, $posttype);
	break;

    case ""._OK."":
	CreateTopic($xanonpost, $subject, $comment, $pid, $sid, $host_name, $mode, $order, $thold, $posttype);
	break;

    case "moderate":
	if(isset($admin)) {
	    include("auth.php");
	} else {
	    include("mainfile.php");	
	}
	if(($admintest==1) || ($moderate==2)) {
	    while(list($tdw, $emp) = each($HTTP_POST_VARS)) {
		if (eregi("dkn",$tdw)) {
		    $emp = explode(":", $emp);
		    if($emp[1] != 0) {
			$tdw = ereg_replace("dkn", "", $tdw);
			$q = "UPDATE ".$prefix."_comments SET";
			if(($emp[1] == 9) && ($emp[0]>=0)) { # Overrated
			    $q .= " score=score-1 where tid='$tdw'";
			} elseif (($emp[1] == 10) && ($emp[0]<=4)) { # Underrated
			    $q .= " score=score+1 where tid='$tdw'";
			} elseif (($emp[1] > 4) && ($emp[0]<=4)) {
			    $q .= " score=score+1, reason=$emp[1] where tid='$tdw'";
			} elseif (($emp[1] < 5) && ($emp[0] > -1)) {
			    $q .= " score=score-1, reason=$emp[1] where tid='$tdw'";
			} elseif (($emp[0] == -1) || ($emp[0] == 5)) {
			    $q .= " reason=$emp[1] where tid='$tdw'";
			}
			if(strlen($q) > 20) $db->sql_query($q);
		    }
		}
	    }
	}
	Header("Location: modules.php?name=$module_name&file=article&sid=$sid&mode=$mode&order=$order&thold=$thold");
	break;

    case "showreply":
	DisplayTopic($sid, $pid, $tid, $mode, $order, $thold);
	break;

    default:
	if ((isset($tid)) && (!isset($pid))) {
	    singlecomment($tid, $sid, $mode, $order, $thold);
	} elseif (($mainfile) xor (($pid==0) AND (!isset($pid)))) {
	    Header("Location: modules.php?name=$module_name&file=article&sid=$sid&mode=$mode&order=$order&thold=$thold");
	} else {
	    if(!isset($pid)) $pid=0;
	    DisplayTopic($sid, $pid, $tid, $mode, $order, $thold);
	}
	break;

}

?>