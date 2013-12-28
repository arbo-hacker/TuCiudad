<?php

/************************************************************/
/* Theme Name: Helius                                       */
/* Theme Design: mikem (http://www.nukemods.com)            */
/* version 2.0                                              */
/* Theme inspired by the phpbb2 style Helius by             */
/* Cyberalien (http://www.trushkin.net/)                    */
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

$bgcolor1 = "#667593";
$bgcolor2 = "#667593";
$bgcolor3 = "#EDEFF2";
$bgcolor4 = "#DDE2EC";
$textcolor1 = "#000000";
$textcolor2 = "#000000";

include("themes/bluetarget/tables.php");

/************************************************************/
/* Function themeheader()                                   */
/*                                                          */
/* Control the header for your site. You need to define the */
/* BODY tag and in some part of the code call the blocks    */
/* function for left side with: blocks(left);               */
/************************************************************/

function themeheader() {
    global $admin, $user, $banners, $sitename, $slogan, $cookie, $prefix, $db, $nukeurl, $anonymous;

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

global $useflags, $currentlang;

if ($useflags == 1) {
    $ulang = "";
    $langdir = dir("language");
    while($func=$langdir->read()) {
	if(substr($func, 0, 5) == "lang-") {
	    $menulist .= "$func ";
	}
    }
    closedir($langdir->handle);
    $menulist = explode(" ", $menulist);
    sort($menulist);
    for ($i=0; $i < sizeof($menulist); $i++) {
	if($menulist[$i]!="") {
	    $tl = ereg_replace("lang-","",$menulist[$i]);
	    $tl = ereg_replace(".php","",$tl);
	    $altlang = ucfirst($tl);
	    $ulang .= "<a href=\"index.php?newlang=$tl\"><img src=\"images/language/flag-$tl.png\"  border=\"0\" alt=\"$altlang\" title=\"$altlang\" hspace=\"2\"></a> ";
	}
    }
    $ulang .= "</font>";
} else {
    $ulang = "<font class=\"content\">"._SELECTGUILANG."</font>";
    $ulang .= "<form action=\"index.php\" method=\"get\"><select name=\"newlanguage\" onChange=\"top.location.href=this.options[this.selectedIndex].value\">";
    $handle=opendir('language');
    while ($file = readdir($handle)) {
	if (preg_match("/^lang\-(.+)\.php/", $file, $matches)) {
	    $langFound = $matches[1];
	    $languageslist .= "$langFound ";
	}
    }
    closedir($handle);
    $languageslist = explode(" ", $languageslist);
    sort($languageslist);
    for ($i=0; $i < sizeof($languageslist); $i++) {
	if($languageslist[$i]!="") {
	    $ulang .= "<option value=\"index.php?newlang=$languageslist[$i]\" ";
	    if($languageslist[$i]==$currentlang) $ulang .= " selected";
	    $ulang .= ">".ucfirst($languageslist[$i])."</option>\n";
	}
    }
    $ulang .= "</select></form>";
}



        cookiedecode($user);
    $username = $cookie[1];
    if ($username == "") {
        $username = "Anonymous";
    }
    echo "<body background=\"themes/bluetarget/images/BG.gif\" text=\"#FFFFFF\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">";

    if ($username == "Anonymous") {
	$theuser = "Anonymous";
    } else {
	$theuser = "$username";
    }
            	$public_msg = public_message();
    $tmpl_file = "themes/bluetarget/header.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
    blocks(left);
    $tmpl_file = "themes/bluetarget/left_center.html";
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
	$tmpl_file = "themes/bluetarget/center_right.html";
	$thefile = implode("", file($tmpl_file));
	$thefile = addslashes($thefile);
	$thefile = "\$r_file=\"".$thefile."\";";
	eval($thefile);
	print $r_file;
	blocks(right);
    }	
    $tmpl_file = "themes/bluetarget/footer.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
        echo "<center>\n";
        $footer_message = footmsg();
            echo "</center>\n";
       
	echo "<br>\n";
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

    $content = "$thetext$notes\n";
    $posted = ""._POSTEDBY." ";
    $posted .= get_author($informant);
    $posted .= " "._ON." $time $timezone";
    $tmpl_file = "themes/bluetarget/story_home.html";
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
    $aid = $informant;
    $posted = ""._POSTEDON." $datetime "._BY." ";
    $posted .= get_author($aid);
    if ($notes != "") {
	$notes = "<br><br><b>"._NOTE."</b> <i>$notes</i>\n";
    } else {
	$notes = "";
    }

    $content = "$thetext$notes\n";
    $tmpl_file = "themes/bluetarget/story_page.html";
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
global $blockside;
//    if ($blockside == "r") {$tmpl_file = "themes/Helius/blocks.html";}
//    if ($blockside == "l") {$tmpl_file = "themes/Helius/blocksleft.html";}
    $tmpl_file = "themes/bluetarget/blocks.html";
    $thefile = implode("", file($tmpl_file));
    $thefile = addslashes($thefile);
    $thefile = "\$r_file=\"".$thefile."\";";
    eval($thefile);
    print $r_file;
}
?>
