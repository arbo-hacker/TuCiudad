<?php

$bgcolor1 = "#D3EAF5";
$bgcolor2 = "#5DE4F8";
$bgcolor3 = "#91C0E7";
$bgcolor4 = "#DCECEF";
$textcolor1 = "#000000";
$textcolor2 = "#0F1D8C";

function OpenTable() {
    global $bgcolor1, $bgcolor2;
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\" bgcolor=\"#D9EDEF\"><tr><td>\n";
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"8\" td style=\"background-image: url(themes/BlueNile/images/back.gif);\"><tr><td>\n";
}

function CloseTable() {
    echo "</td></tr></table></td></tr></table>\n";
}

function OpenTable2() {
    global $bgcolor1, $bgcolor2;
    echo "<table border=\"0\" cellspacing=\"1\" cellpadding=\"0\" bgcolor=\"$bgcolor2\" align=\"center\"><tr><td>\n";
    echo "<table border=\"0\" cellspacing=\"1\" cellpadding=\"8\" bgcolor=\"#91C0E7\"><tr><td>\n";
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
    global $banners;
    echo "<body bgcolor=\FFFFFF\" text=\"#0F1D8C\" link=\"#E5F4FA\">"
	."<br>";
    if ($banners) {
	include("banners.php");
	echo "<br>";
    }

    echo "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"840\" align=\"center\">\n"
	."<tr><td width=\"100%\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"840\">\n"
	."<tr><td width=\"100%\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"840\">\n"
	."<tr><td width=\"100%\" height=\"88\" td style=\"background-image: url(themes/BlueNile/images/skin.gif);\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"4\">\n"
	."<table border=0 width=100% cellpadding=0 cellspacing=0><tr><td align=\"left\"><a href=\"index.php\"><img border=\"0\" src=\"themes/BlueNile/images/logo.gif\" alt=\"Welcome to $sitename!\" hspace=\"0\"></a></td><td align=\"right\"><img border=\"0\" src=\"themes/BlueNile/images/logo-graphic.gif\"></td></tr></table></td></tr>\n"
	."<tr><td width=\"100%\" bgcolor=\"#D3EAF5\" height=\"19\" valign=\"bottom\">\n"
	."<a href=\"index.php\"><img border=\"0\" src=\"themes/BlueNile/images/home.gif\" width=\"140\" height=\"18\"></a>"
	."<a href=\"modules.php?name=Your_Account\"><img border=\"0\" src=\"themes/BlueNile/images/account.gif\" width=\"140\" height=\"18\"></a>"
	."<a href=\"modules.php?name=Downloads\"><img border=\"0\" src=\"themes/BlueNile/images/downloads.gif\" width=\"140\" height=\"18\"></a>"
	."<a href=\"modules.php?name=Submit_News\"><img border=\"0\" src=\"themes/BlueNile/images/submit.gif\" width=\"140\" height=\"18\"></a>"
	."<a href=\"modules.php?name=Topics\"><img border=\"0\" src=\"themes/BlueNile/images/topics.gif\" width=\"140\" height=\"18\"></a>"
	."<a href=\"modules.php?name=Top\"><img border=\"0\" src=\"themes/BlueNile/images/top10.gif\" width=\"140\" height=\"18\"></a>"
	."</td></tr><tr><td width=\"100%\" height=\"10\" bgcolor=\"#D3EAF5\">\n"
	."</td></tr></table>\n"
	."</td></tr><tr><td width=\"100%\"><table width='100%' cellspacing='0' cellpadding='0' border='0'><tr><td bgcolor='#D3EAF5'>\n"
;
    $public_msg = public_message();
    echo "$public_msg<br>";
    echo "</td></tr></table><table width=\"840\" cellpadding=\"0\" td bgcolor=\"#D3EAF5\">\n"
	."<tr valign=\"top\">\n"
	."<td><img src=\"themes/BlueNile/images/pixel.gif\" width=\"6\" height=\"1\" border=\"0\" alt=\"\"></td>\n"
	."<td width=\"138\" bgcolor=\"#D3EAF5\" valign=\"top\">\n";
    blocks(left);
    echo "</td><td><img src=\"themes/BlueNile/images/pixel.gif\" width=\"10\" height=\"1\" border=\"0\" alt=\"\"></td><td width=\"100%\">\n";
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
    global $index;
    echo "<br>";
    if ($index == 1) {
	echo "</td><td><img src=\"themes/BlueNile/images/pixel.gif\" width=\"10\" height=\"1\" border=\"0\" alt=\"\"></td><td valign=\"top\" width=\"138\" bgcolor=\"#D3EAF5\">\n";
	blocks(right);
	echo "<td><img src=\"themes/BlueNile/images/pixel.gif\" width=\"6\" height=\"1\" border=\"0\" alt=\"\">";
    }
 else {
	echo "</td><td colspan=\"2\"><img src=\"themes/BlueNile/images/pixel.gif\" width=\"10\" height=\"1\" border=\"0\" alt=\"\">";
    }
    echo "<br><br></td></tr></table>\n"
	."<br><center>";
    footmsg();
    echo "</center>";
}


function themeindex ($aid, $informant, $time, $title, $counter, $topic, $thetext, $notes, $morelink, $topicname, $topicimage, $topictext) {
    global $anonymous, $tipath;
    echo "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td bgcolor=\"#0F1D8C\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" width=\"100%\"><tr><td bgcolor=\"#AADAED\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td bgcolor=\"#AADAED\">\n"
	."<img src=\"themes/BlueNile/images/dot.gif\" border=\"0\"></td><td width=\"100%\" bgcolor=\"#AADAED\"><font class=\"option\"><b>&nbsp;$title</b></font></td></tr>\n"
	."<tr><td colspan=\"2\" bgcolor=\"#E7E9F7\"><br>\n"
	."<table border=\"0\" width=\"98%\" align=\"center\"><tr><td>\n"
	."<a href=\"modules.php?name=News&new_topic=$topic\"><img src=\"$tipath$topicimage\" alt=\"$topictext\" border=\"0\" align=\"right\"></a>";
    FormatStory($thetext, $notes, $aid, $informant);
    echo "</td></tr></table>\n"
	."</td></tr></table><br>\n"
	."</td></tr><tr><td td style=\"background-image: url(themes/BlueNile/images/back.gif);\" align=\"center\">\n"
	."<font class=\"tiny\">"._POSTEDBY." ";
    formatAidHeader($aid);
    echo " "._ON." $time $timezone ($counter "._READS.")<br></font>\n"
	."<font class=\"content\">$morelink</font></center><br>\n"
	."<img src=\"themes/BlueNile/images/pixel.gif\" border=\"0\" height=\"3\">\n"
	."</td></tr></table>\n"
	."</td></tr></table><br>\n";
}

function themearticle ($aid, $informant, $datetime, $title, $thetext, $topic, $topicname, $topicimage, $topictext) {
    global $admin, $sid, $tipath;
    echo "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td bgcolor=\"#D3EAF5\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" width=\"100%\"><tr><td bgcolor=\"#D3EAF5\">\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tr><td bgcolor=\"#D3EAF5\">\n"
	."<img src=\"themes/BlueNile/images/dot.gif\" border=\"0\"></td><td width=\"100%\" bgcolor=\"#D3EAF5\"><font class=\"option\"><b>&nbsp;$title</b></font></td></tr>\n"
	."<tr><td colspan=\"2\" bgcolor=\"#D3EAF5\"><br>\n"
	."<table border=\"0\" width=\"98%\" align=\"center\"><tr><td>\n"
	."<a href=\"modules.php?name=News&new_topic=$topic\"><img src=\"$tipath$topicimage\" alt=\"$topictext\" border=\"0\" align=\"right\"></a>";
    FormatStory($thetext, $notes="", $aid, $informant);
    echo "</td></tr></table>\n"
	."</td></tr></table><br>\n"
	."</td></tr></table>\n"
	."</td></tr></table><br><br>\n";
}

function themesidebox($title, $content) {
    echo "<table border=\"0\" align=\"center\" width=\"138\" cellpadding=\"0\" cellspacing=\"0\">"
	."<tr><td background=\"themes/BlueNile/images/table-title.gif\" width=\"138\" height=\"20\">"
	."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#0F1D8C\"><b>$title</b></font>"
	."</td></tr><tr><td><img src=\"themes/BlueNile/images/pixel.gif\" width=\"100%\" height=\"3\"></td></tr></table>\n"
	."<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"138\">\n"
	."<tr><td width=\"138\" bgcolor=\"#D3EAF5\">\n"
	."<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" width=\"138\">\n"
	."<tr><td width=\"138\" td style=\"background-image: url(themes/BlueNile/images/spot.gif);\">\n"
	."$content"
	."</td></tr></table></td></tr></table><br>";
}

?>