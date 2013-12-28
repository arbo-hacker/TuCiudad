<?php

/************************************************************************/
/* PHP-NUKE: SimpleTech theme for nuke 6.5                              */
/* ============================================                         */
/* Copyright (c) 2003 by Mtechnik                                       */
/* http://mtechnik.net                                                  */
/* Made for PHP-NUKE 6.5: Advanced Content Management System            */
/* ============================================                         */
/* Copyright (c) 2003 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/************************************************************************/
// SimpleTech Public Release theme
// Original Author of file: Mtechnik - http://mtechnik.net
// Purpose of file: Public Release phpnuke 6.5 Theme
// Developed at the1theme.com
// Copyright © 2003 by Mtechnik All Rights Reserved
// ----------------------------------------------------------------------
// THEME MODIFICATION 
// Users may alter or modify this theme at their own risk,
// but only for their own use. They may also hire Mtechnik to modify their own copy of the theme.
// Although users may modify the code for their use,
// modified code may not be resold or distributed,
// without express written permission from Mtechnik.
//
// DISPLAY OF COPYRIGHT NOTICES REQUIRED
// All copyright notices used within the scripts that the scripts generate,
// MUST remain intact. Furthermore, these notices must remain visible.
//
// SUPPORT
// Mtechnik provide free support, BUT not mod on the theme,
// (includes consulting, troubleshooting and fixing problems).
//
// Mtechnik is not liable for any products or services offered by means of the theme.
// The user must assume the entire risk of using the program.
//
// Mtechnik
// For commercial themes, exclusive themes, visit my theme shop www.the1theme.com
// For more free themes, visit my community at mtechnik.net
// www.mtechnik.net
// mtechnik@mtechnik.net
// ----------------------------------------------------------------------

/************************************************************/
/* Theme Colors Definition                                  */
/************************************************************/

$bgcolor1 = "#262626";
$bgcolor2 = "#262626";
$bgcolor3 = "#0000000";
$bgcolor4 = "#262626";
$textcolor1 = "#FFFFFF";
$textcolor2 = "#FFFFFF";

/************************************************************/
/* OpenTable Functions                                      */
/************************************************************/

function OpenTable() {
    
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\" ><tr><td class=extra>\n";
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"8\" ><tr><td>\n";
}

function CloseTable() {
    echo "</td></tr></table></td></tr></table>\n";
}

function OpenTable2() {
    
    echo "<table border=\"0\" cellspacing=\"1\" cellpadding=\"0\" align=\"center\"><tr><td class=extras>\n";
    echo "<table border=\"0\" cellspacing=\"1\" cellpadding=\"8\" ><tr><td>\n";
}

function CloseTable2() {
    echo "</td></tr></table></td></tr></table>\n";
}
function OpenTable3() {
    
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\" ><tr><td class=row3>\n";
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"8\" ><tr><td>\n";
}

function CloseTable3() {
    echo "</td></tr></table></td></tr></table>\n";
}
/************************************************************/
/* FormatStory                                              */
/************************************************************/

function FormatStory($thetext, $notes, $aid, $informant) {
    global $anonymous;
    if ($notes != "") {
        $notes = "<br><br><b>"._NOTE."</b> <i>$notes</i>\n";
    } else {
        $notes = "";
    }
    if ("$aid" == "$informant") {
        echo "<font class=\"content\" color=\"#505050\">$thetext$notes</font>\n";
    } else {
        if($informant != "") {
            $boxstuff = "<a href=\"modules.php?name=Your_Account&amp;op=userinfo&amp;username=$informant\">$informant</a> ";
        } else {
            $boxstuff = "$anonymous ";
        }
        $boxstuff .= ""._WRITES." <i>\"$thetext\"</i>$notes\n";
        echo "<font class=\"content\" color=\"#505050\">$boxstuff</font>\n";
    }
}

/************************************************************/
/* Function themeheader()                                   */
/************************************************************/
    function themeheader() {
    global $user, $sitename, $cookie, $prefix, $sitekey, $dbi;
    mt_srand ((double)microtime()*1000000);
    $maxran = 1000000;
    $random_num = mt_rand(0, $maxran);
    $datekey = date("F j");
    $rcode = hexdec(md5($_SERVER[HTTP_USER_AGENT] . $sitekey . $random_num . $datekey));
    $code = substr($rcode, 2, 6);
    
    $username = $cookie[1];
    if ($username == "") {
        $username = "Anonymous";
    }
    $public_msg = public_message(); 
    echo "$public_msg";
    
    if ($username == "Anonymous") {
        $theuser = "<font size=\"1\" face=\"arial\" color=\"#FFFFFF\"><form action=\"modules.php?name=Your_Account\" method=\"post\"><input type=\"text\" name=\"username\" value style=\"width:120;height:19;FONT-SIZE: 9px; color:#FFFFFF; background:#303030\">&nbsp;<b>:Username</b>&nbsp;<input type=\"password\" name=\"user_password\" value style=\"width:120;height:19;FONT-SIZE: 9px; color:#FFFFFF; background:#303030\">&nbsp;<b>:Password</b></font></TD><TD align=left background=\"themes/SimpleTech/images/SimpleTech-hd_user2.gif\" WIDTH=94 HEIGHT=22><input type=\"hidden\" name=\"random_num\" value=\"$random_num\"><input type=\"hidden\" name=\"gfx_check\" value=\"$code\"><input type=\"hidden\" name=\"op\" value=\"login\"><input type=\"image\" value=\"login\" src=\"themes/SimpleTech/images/go.gif\" border=\"0\"></TD></form>\n";
    
    } else {
        $theuser = "<font size=\"1\" face=\"arial\" color=\"#FFFFFF\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$username</font></TD><TD align=left valign=bottom background=\"themes/SimpleTech/images/SimpleTech-hd_user2.gif\" WIDTH=94 HEIGHT=22><a href=\"modules.php?name=Your_Account&op=logout\"><img src=\"themes/SimpleTech/images/logout.gif\" border=\"0\" alt=\"Salir\"></a></TD>\n";
    }
    
   echo "<body topmargin=\"0\" leftmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">";
    include("themes/SimpleTech/header.php");
    


    echo "<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\n"
		."<tr valign=\"top\">\n"
        ."<td width=\"15\" valign=\"top\" background=\"themes/SimpleTech/images/leftbg.gif\"><img src=\"themes/SimpleTech/images/leftbg.gif\" width=\"15\" height=\"0\" border=\"0\"></td>\n"
		."<td width=\"165\" background=\"themes/SimpleTech/images/leftbbg.gif\" valign=\"top\">\n";
    blocks(left);
    echo "</td>\n"
    	."<td><img src=\"themes/SimpleTech/images/pixel.gif\" width=\"5\" height=\"0\" border=\"0\" alt=\"\"></td>\n"
    	."<td width=\"100%\">\n";
}


/************************************************************/
/* Function themefooter()                                   */
/************************************************************/

function themefooter() {
    global $index, $user, $banners, $cookie, $prefix, $dbi, $db, $foot1, $foot2, $foot3, $foot4, $admin,  $adminmail, $nukeurl; 

    if ($banners == 1) {
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
    }
}
    $footer_message = "$foot1<br>$foot2<br>$foot3<br>$foot4";
    
 if ($index == 1) {
	echo "</td>\n"
	    ."<td><img src=\"themes/SimpleTech/images/pixel.gif\" width=\"5\" height=\"0\" border=\"0\" alt=\"\"></td>\n"
	    ."<td valign=\"top\" background=\"themes/SimpleTech/images/rightbbg.gif\" width=\"165\">\n";
	blocks(right);
    }
    echo "</td>\n"
        ."<td width=\"15\" valign=\"top\" background=\"themes/SimpleTech/images/rightbg.gif\"><img src=\"themes/SimpleTech/images/rightbg.gif\" width=\"15\" height=\"0\" border=\"0\"></td>\n"
	    ."</tr>\n"
	    ."</table>\n\n\n";
    
    
    include("themes/SimpleTech/footer.php");
    OpenTable3();
    echo "<center>";
    footmsg();
    echo "</center>";
    CloseTable3();
}

/************************************************************/
/* Function themeindex()                                    */
/* This function format the stories on the Homepage         */
/************************************************************/
function themeindex ($aid, $informant, $time, $title, $counter, $topic, $thetext, $notes, $morelink, $topicname, $topicimage, $topictext) {
    global $anonymous, $tipath;

$ThemeSel = get_theme();
    if (file_exists("themes/$ThemeSel/images/topics/$topicimage")) {
	$t_image = "themes/$ThemeSel/images/topics/$topicimage";
    } else {
	$t_image = "$tipath$topicimage";
}
    if ($notes != "") {
        $notes = "<br><br><b>"._NOTE."</b> $notes\n";
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
        $content .= ""._WRITES." \"$thetext\"$notes\n";
    }
    //Code Changed - just show posted by
   $posted = ""._POSTEDBY." ";
    $posted .= get_author($aid);
    $posted .= " "._ON." $time $timezone ";
    //End Code Change
    
    $tmpl_file = "themes/SimpleTech/story_home.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
}

/************************************************************/
/* Function themeindex()                                    */
/************************************************************/

function themearticle ($aid, $informant, $datetime, $title, $thetext, $topic, $topicname, $topicimage, $topictext) {
    global $admin, $sid, $tipath;
$ThemeSel = get_theme();
    if (file_exists("themes/$ThemeSel/images/topics/$topicimage")) {
	$t_image = "themes/$ThemeSel/images/topics/$topicimage";
    } else {
	$t_image = "$tipath$topicimage";
}
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
    $tmpl_file = "themes/SimpleTech/story_page.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
}

/************************************************************/
/* Function themesidebox()                                  */
/************************************************************/

function themesidebox($title, $content) {
    $tmpl_file = "themes/SimpleTech/blocks.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
}

?>