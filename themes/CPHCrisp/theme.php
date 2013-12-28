<?php

$bgcolor1 = "#ffffff";
$bgcolor2 = "#3E4E5D";
$bgcolor3 = "#d3e2ea";
$bgcolor4 = "#f3f3f3";
$textcolor1 = "#000000";
$textcolor2 = "#000000";

function OpenTable() {
    global $bgcolor2, $bgcolor4;
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\" bgcolor=\"$bgcolor2\"><tr><td>\n";
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"8\" bgcolor=\"$bgcolor4\"><tr><td>\n";
}

function CloseTable() {
    echo "</td></tr></table></td></tr></table>\n";
}

function OpenTable2() {
    global $bgcolor1, $bgcolor2;
    echo "<table border=\"0\" cellspacing=\"1\" cellpadding=\"0\" bgcolor=\"$bgcolor2\" align=\"center\"><tr><td>\n";
    echo "<table border=\"0\" cellspacing=\"1\" cellpadding=\"8\" bgcolor=\"$bgcolor1\"><tr><td>\n";
}

function CloseTable2() {
    echo "</td></tr></table></td></tr></table>\n";
}

function FormatStory($thetext, $notes, $aid, $informant) {
    global $anonymous;
    if ($notes != "") {
	$notes = "<br><br><b>"._NOTE."</b> <i>$notes</i>\n";
    } else {
	$notes = "";
    }
    if ("$aid" == "$informant") {
	echo "<font class=\"content\">$thetext$notes</font>\n";
    } else {
	if($informant != "") {
	    $boxstuff = "<a href=\"modules.php?name=Your_Account&amp;op=userinfo&amp;username=$informant\">$informant</a> ";
	} else {
	    $boxstuff = "$anonymous ";
	}
	$boxstuff .= ""._WRITES." <i>\"$thetext\"</i>$notes\n";
	echo "<font class=\"content\">$boxstuff</font>\n";
    }
}

/************************************************************/
/* Function themeheader()                                   */
/************************************************************/

function themeheader() {
    global $banners, $bside;
    echo "<body bgcolor=\"#1B3152\" text=\"#000000\">";
          
    echo "<table bgcolor=\"#FFFFFF\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" width=\"100%\" align=\"center\">\n"
	."<tr><td width=\"100%\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n"
	."<tr><td width=\"100%\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n"
	."<tr><td width=\"100%\" height=\"86\" background=\"themes/CPHCrisp/images/main_02.gif\">\n"
	."<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td width=\"346\"><a href=\"index.php\"><img src=\"themes/CPHCrisp/images/main_01.gif\" align=\"left\" hspace=\"0\" border=\"0\"></a></td><td width=\"489\">\n";
if ($banners) {
       include("banners.php");
}	
	echo "<br><img src=\"themes/CPHCrisp/images/pixel.gif\" width=\"489\" height=\"20\" border=\"0\" alt=\"\"></td></tr></table></td></tr><tr><td width=\"100%\" valign=\"top\">\n"
	."<table width=\"100%\" cellpadding=\"0\" bgcolor=\"ffffff\" cellspacing=\"0\" border=\"0\">\n"
	."<tr valign=\"top\">\n"
	."<td width=\"133\" bgcolor=\"#1B3152\" valign=\"top\" align=\"center\">\n";
    $bside="left";
    blocks(left);
    $bside="";
    echo "<br><img src=\"themes/CPHCrisp/images/pixel.gif\" width=\"133\" height=\"1\" border=\"0\" alt=\"\"></td><td><img src=\"themes/CPHCrisp/images/pixel.gif\" width=\"10\" height=\"1\" border=\"0\" alt=\"\"></td><td width=\"100%\"><br>\n";
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
    global $index, $bside;
    echo "<br>";
    if ($index == 1) {
	echo "</td><td><img src=\"themes/CPHCrisp/images/pixel.gif\" width=\"10\" height=\"1\" border=\"0\" alt=\"\"></td><td valign=\"top\" width=\"138\"><br>\n";
	$bside="right";
	blocks(right);
	echo "<td><img src=\"themes/CPHCrisp/images/pixel.gif\" width=\"6\" height=\"1\" border=\"0\" alt=\"\">";
    }
 else {
	echo "</td><td><img src=\"themes/CPHCrisp/images/pixel.gif\" width=\"10\" height=\"1\" border=\"0\" alt=\"\">";
    }
    echo "<br><br></td></tr></table><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td><img src=\"themes/CPHCrisp/images/main_05.gif\" border=\"0\"></td><td background=\"themes/CPHCrisp/images/main_07.gif\" width=\"100%\"><img src=\"themes/CPHCrisp/images/main_06.gif\" align=\"left\" hspace=\"0\" vspace=\"0\"></td></tr></table></td></tr></table></td></tr></table></td></tr></table>\n"
	."<br><center>";
    footmsg();
    echo "</center>";
}


function themeindex ($aid, $informant, $time, $title, $counter, $topic, $thetext, $notes, $morelink, $topicname, $topicimage, $topictext) {
    global $anonymous, $tipath;
    echo "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td bgcolor=\"#ffffff\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" width=\"100%\"><tr><td bgcolor=\"#ffffff\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td height=\"15\">\n"
	."<img src=\"themes/CPHCrisp/images/title_dots.gif\" border=\"0\" width=\"19\" height=\"15\"></td><td height=\"15\" width=\"100%\">&nbsp;<font class=\"option2\"><b>&nbsp;$title&nbsp;</b></font>&nbsp;-&nbsp;<a href=\"modules.php?name=News&new_topic=$topic\">$topictext</a></td></tr>\n"
	."<tr><td colspan=\"2\"><br>\n"
	."<table border=\"0\" width=\"98%\" align=\"center\"><tr><td>\n";
    FormatStory($thetext, $notes, $aid, $informant);
    echo "</td></tr></table>\n"
	."</td></tr></table><br>\n"
	."</td></tr><tr><td bgcolor=\"#e6e6e6\" align=\"center\">\n"
	."<font class=\"tiny\">"._POSTEDBY." ";
    formatAidHeader($aid);
    echo " "._ON." $time $timezone ($counter "._READS.")<br></font>\n"
	."<font class=\"content\">$morelink</font></center>\n"
	//."<img src=\"themes/CPHCrisp/images/pixel.gif\" border=\"0\" height=\"3\">\n"
	."</td></tr></table>\n"
	."</td></tr></table><br>\n";
}

function themearticle ($aid, $informant, $datetime, $title, $thetext, $topic, $topicname, $topicimage, $topictext) {
    global $admin, $sid, $tipath;
    echo "<font class=\"option2\"><b>&nbsp;$title&nbsp;</b></font>&nbsp;-&nbsp;<a href=\"modules.php?name=News&new_topic=$topic\">$topictext</a><br><br>\n";
    FormatStory($thetext, $notes="", $aid, $informant);
    
}

function themesidebox($title, $content) {
    global $bgcolor11, $bside;
	
	if ($bside == "left") {
          echo "<table border=\"0\" width=\"133\" cellpadding=\"0\" cellspacing=\"0\">\n"
	."<tr><td bgcolor=\"#3E4E5D\" width=\"133\" height=\"14\" background=\"themes/CPHCrisp/images/lblock_title.gif\">\n"
	."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#FFFFFF\"><b>$title</b></font>\n"
	."</td></tr><tr><td valign=\"top\"><img src=\"themes/CPHCrisp/images/pixel.gif\" width=\"133\" height=\"3\"></td></tr></table>\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"120\" align=\"center\">\n"
	."<tr><td align=\"left\" width=\"120\" bgcolor=\"#000000\">\n"
	."<table align=\"left\"  border=\"0\" cellpadding=\"1\" cellspacing=\"1\" width=\"120\">\n"
	."<tr><td align=\"left\" width=\"120\" bgcolor=\"#f3f3f3\">\n"
	."$content"
	."</td></tr></table></td></tr></table><br>";
	}

	elseif ($bside == "right") {
    echo "<table border=\"0\" align=\"center\" width=\"170\" cellpadding=\"0\" cellspacing=\"0\">"
	."<tr><td bgcolor=\"#FFffff\" width=\"170\" height=\"20\" background=\"themes/CPHCrisp/images/rblocks_01.gif\" nowrap>\n"
	."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#FFFFFF\"><b>$title</b></font>"
	."</td></tr><tr><td><img src=\"themes/CPHCrisp/images/rblocks_02.gif\"></td></tr></table>\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"170\">\n"
	."<tr><td width=\"170\" bgcolor=\"#1B3152\">\n"
	."<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" width=\"160\" align=\"center\">\n"
	."<tr><td width=\"160\">\n"
	."<font  class=\"rblinks\" color=\"#FFFFFF\">$content</font>"
	."</td></tr></table></td></tr><tr><td><img src=\"themes/CPHCrisp/images/rblocks_04.gif\"></td></tr></table><br>";
	}

	else {
    echo "<table border=\"0\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">"
	."<tr><td bgcolor=\"#EAA000\" width=\"100%\" height=\"20\">"
	."<center><font color=\"#FFFFFF\"><b>$title</b></font></center>"
	."</td></tr><tr><td valign=\"top\"><img src=\"themes/CPHCrisp/images/pixel.gif\" width=\"100%\" height=\"1\"><img src=\"themes/CPHCrisp/images/pixel.gif\" height=\"1\" width=\"138\"></td></tr></table>\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n"
	."<tr><td align=\"left\" width=\"100%\" bgcolor=\"#000000\">\n"
	."<table align=\"left\"  border=\"0\" cellpadding=\"1\" cellspacing=\"1\" width=\"100%\">\n"
	."<tr><td align=\"left\" width=\"100%\" bgcolor=\"#f3f3f3\">\n"
	."$content"
	."</td></tr></table></td></tr></table><br>";
	}
}

?>