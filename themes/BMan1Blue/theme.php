<?php

/************************************************************/
/* Theme Name: BMan1Blue                                    */
/* Theme Design: mikem (www.nukemods.com)                   */
/* version 2.0                                              */
/*                                                          */
/* Theme inspired by the phpbb2 style BMan1Blue by          */
/* Bman1 (http://www.bman1.com/)                            */
/*                                                          */
/************************************************************/

/************************************************************/
/* Theme Colors Definition                                  */
/*                                                          */
/* Define colors for your web site. $bgcolor2 is generaly   */
/* used for the tables border as you can see on OpenTable() */
/* function, $bgcolor1 is for the table background and the  */
/* other two bgcolor variables follows the same criteria.   */
/* $texcolor1 and 2 are for tables internal texts           */
/************************************************************/

$bgcolor1 = "#99CCFF";
$bgcolor2 = "#99CCFF";
$bgcolor3 = "#C0E0FF";
$bgcolor4 = "#C0E0FF";
$textcolor1 = "#336699";
$textcolor2 = "#336699";

include("themes/BMan1Blue/tables.php");

/************************************************************/
/* Function themeheader()                                   */
/*                                                          */
/* Control the header for your site. You need to define the */
/* BODY tag and in some part of the code call the blocks    */
/* function for left side with: blocks(left);               */
/************************************************************/

function themeheader() {
    global  $admin, $user, $banners, $sitename, $slogan, $cookie, $prefix, $db, $nukeurl, $anonymous;
    $numrows = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_banner WHERE type='0' AND active='1'"));
   /* Get a random banner if exist any. */ 
   /* More efficient random stuff, thanks to Cristian Arroyo from http://www.planetalinux.com.ar */ 

    if ($numrows>1) { 
   $numrows = $numrows-1; 
   mt_srand((double)microtime()*1000000); 
   $bannum = mt_rand(0, $numrows); 
    } else { 
   $bannum = 0; 
    } 
    $sql = "SELECT bid, imageurl, clickurl, alttext FROM ".$prefix."_banner WHERE type='0' AND active='1' LIMIT $bannum,1"; 
    $result = $db->sql_query($sql); 
    $row = $db->sql_fetchrow($result); 
    $bid = $row[bid]; 
    $imageurl = $row[imageurl]; 
    $clickurl = $row[clickurl]; 
    $alttext = $row[alttext]; 
    
    if (!is_admin($admin)) { 
       $db->sql_query("UPDATE ".$prefix."_banner SET impmade=impmade+1 WHERE bid='$bid'"); 
    } 
    if($numrows>0) { 
   $sql2 = "SELECT cid, imptotal, impmade, clicks, date FROM ".$prefix."_banner WHERE bid='$bid'"; 
   $result2 = $db->sql_query($sql2); 
   $row2 = $db->sql_fetchrow($result2); 
   $cid = $row2[cid]; 
   $imptotal = $row2[imptotal]; 
   $impmade = $row2[impmade]; 
   $clicks = $row2[clicks]; 
   $date = $row2[date]; 

/* Check if this impression is the last one and print the banner */ 

   if (($imptotal <= $impmade) AND ($imptotal != 0)) { 
       $db->sql_query("UPDATE ".$prefix."_banner SET active='0' WHERE bid='$bid'"); 
       $sql3 = "SELECT name, contact, email FROM ".$prefix."_bannerclient WHERE cid='$cid'"; 
       $result3 = $db->sql_query($sql3); 
       $row3 = $db->sql_fetchrow($result3); 
       $c_name = $row3[name]; 
       $c_contact = $row3[contact]; 
       $c_email = $row3[email]; 
       if ($c_email != "") { 
      $from = "$sitename <$adminmail>"; 
      $to = "$c_contact <$c_email>"; 
      $message = ""._HELLO." $c_contact:\n\n"; 
      $message .= ""._THISISAUTOMATED."\n\n"; 
      $message .= ""._THERESULTS."\n\n"; 
      $message .= ""._TOTALIMPRESSIONS." $imptotal\n"; 
      $message .= ""._CLICKSRECEIVED." $clicks\n"; 
      $message .= ""._IMAGEURL." $imageurl\n"; 
      $message .= ""._CLICKURL." $clickurl\n"; 
      $message .= ""._ALTERNATETEXT." $alttext\n\n"; 
      $message .= ""._HOPEYOULIKED."\n\n"; 
      $message .= ""._THANKSUPPORT."\n\n"; 
      $message .= "- $sitename "._TEAM."\n"; 
      $message .= "$nukeurl"; 
      $subject = "$sitename: "._BANNERSFINNISHED.""; 
      mail($to, $subject, $message, "From: $from\nX-Mailer: PHP/" . phpversion()); 
       } 
   } 
    $showbanners = "<a href=\"banners.php?op=click&bid=$bid\" target=\"_blank\"><img src=\"$imageurl\" border=\"0\" alt='$alttext' title='$alttext'></a>"; 
    }    cookiedecode($user);
    $username = $cookie[1];
    if ($username == "") {
        $username = "Anonymous";
    }
    echo "<body bgcolor=\"#99CCFF\" text=\"#336699\" leftmargin=\"10\" topmargin=\"10\" marginwidth=\"10\" marginheight=\"10\">";
	

    if ($username == "Anonymous") {
	$theuser = "&nbsp;&nbsp;<a href=\"modules.php?name=Forums&file=profile&mode=register\">Crear una Cuenta";
    } else {
	$theuser = "&nbsp;&nbsp;Hola $username!";
    }
	$public_msg = public_message();
    $tmpl_file = "themes/BMan1Blue/header.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
    blocks(left);
    $tmpl_file = "themes/BMan1Blue/left_center.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
}

/************************************************************/
/* Function themefooter()                                   */
/*                                                          */
/* Control the footer for your site. You don't need to      */
/* close BODY and HTML tags at the end. In some part call   */
/* the function for right blocks with: blocks(right);       */
/* Also, $index variable need to be global and is used to   */
/* determine if the page your're viewing is the Homepage or */
/* and internal one.                                        */
/************************************************************/

function themefooter() {
    global $index, $foot1, $foot2, $foot3, $foot4, $copyright, $totaltime, $footer_message;
    if ($index == 1) {
	$tmpl_file = "themes/BMan1Blue/center_right.html";
	$thefile = implode("", file($tmpl_file));
	$thefile = addslashes($thefile);
	$thefile = "\$r_file=\"".$thefile."\";";
	eval($thefile);
	print $r_file;
	blocks(right);
    }	
    $tmpl_file = "themes/BMan1Blue/footer.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
    echo "<br><center>";
        $footer_message = footmsg();
            echo "</center>\n";
        echo "<center><br><font class=\"small\">:: BMan1Blue phpbb2 style by <a href=\"http://www.bman1.com/\">Bman1</a> :: PHP-Nuke theme by <a href=\"http://www.nukemods.com\">www.nukemods.com</a> ::Traducido Y Modificado Por <a href=\"http://www.nukebazar.com\">DragonNB</a>::</font></center>";  
	echo "<br></td></table>\n";
}

/************************************************************/
/* Function themeindex()                                    */
/*                                                          */
/* This function format the stories on the Homepage         */
/************************************************************/

function themeindex ($aid, $informant, $time, $title, $counter, $topic, $thetext, $notes, $morelink, $topicname, $topicimage, $topictext) {
    global $anonymous, $tipath;
    if ($notes != "") {
	$notes = "<br><br><b>"._NOTE."</b> <i>$notes</i>\n";
    } else {
	$notes = "";
    }
    if ("$aid" == "$informant") {
	$content = "$thetext$notes\n";
    } else {
	if($informant != "") {
	    $content = "<a href=\"modules.php?name=Your_Account&amp;op=userinfo&amp;username=$informant\">$informant</a> ";
	} else {
	    $content = "$anonymous ";
	}
	$content .= ""._WRITES." <i>\"$thetext\"</i>$notes\n";
    }
    $posted = ""._POSTEDBY." ";
    $posted .= get_author($aid);
    $posted .= " "._ON." $time $timezone ($counter "._READS.")";
    $tmpl_file = "themes/BMan1Blue/story_home.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
}

/************************************************************/
/* Function themearticle()                                  */
/*                                                          */
/* This function format the stories on the story page, when */
/* you click on that "Read More..." link in the home        */
/************************************************************/

function themearticle ($aid, $informant, $datetime, $title, $thetext, $topic, $topicname, $topicimage, $topictext) {
    global $admin, $sid, $tipath;
    $posted = ""._POSTEDON." $datetime "._BY." ";
    $posted .= get_author($aid);
    if ($notes != "") {
	$notes = "<br><br><b>"._NOTE."</b> <i>$notes</i>\n";
    } else {
	$notes = "";
    }
    if ("$aid" == "$informant") {
	$content = "$thetext$notes\n";
    } else {
	if($informant != "") {
	    $content = "<a href=\"modules.php?name=Your_Account&amp;op=userinfo&amp;username=$informant\">$informant</a> ";
	} else {
	    $content = "$anonymous ";
	}
	$content .= ""._WRITES." <i>\"$thetext\"</i>$notes\n";
    }
    $tmpl_file = "themes/BMan1Blue/story_page.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
}

/************************************************************/
/* Function themesidebox()                                  */
/*                                                          */
/* Control look of your blocks. Just simple.                */
/************************************************************/

function themesidebox($title, $content) {
    $tmpl_file = "themes/BMan1Blue/blocks.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
}

?>
