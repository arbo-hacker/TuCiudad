<?php

/****************************************************************/
/* Rigsnet theme for phpnuke was created by Leon L. Rigsby III  */
/* This theme is free to use as long as the credit is kept in   */
/* the footer.  Otherwise there is a $5 fee for the use of this*/
/* theme.														*/
/* You can contact me at llr914@hotmail.com or the Contact page */
/* on http://www.rigsnet.com                                    */
/****************************************************************/

$bgcolor1 = "#ffffff";
$bgcolor2 = "#FFB95F";
$bgcolor3 = "#ffffff";
$bgcolor4 = "#FFB95F";
$textcolor1 = "#ffffff";
$textcolor2 = "#000000";

function OpenTable() {
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\" bgcolor=\"FFB95F\"><tr><td>\n";
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"8\" bgcolor=\"ffffff\"><tr><td>\n";
}

function CloseTable() {
    echo "</td></tr></table></td></tr></table>\n";
}

function OpenTable2() {
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\" bgcolor=\"FFB95F\" align=\"center\"><tr><td>\n";
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"8\" bgcolor=\"ffffff\"><tr><td>\n";
}

function CloseTable2() {
    echo "</td></tr></table></td></tr></table>\n";
}

/************************************************************/
/* Function themeheader()                                   */
/*                                                          */
/* Control the header for your site. You need to define the */
/* BODY tag and in some part of the code call the blocks    */
/* function for left side with: blocks(left);               */
/************************************************************/

function themeheader() {
	global $sitename, $slogan, $banners;
	echo "<body background=\"themes/Alloy/images/bg.gif\" bottommargin=\"0\" topmargin=\"0\" leftmargin=\"0\" marginheight=\"0\" marginwidth=\"0\" bgcolor=\"eeeeee\">
		 <table width=\"100%\" bgcolor=\"ffffff\" cellpadding=\"0\" cellspacing=\"0\" align=\"left\">
		 <tr><td width=\"100%\" bgcolor=\"FF8A01\">
		 <table height=\"68\" width=\"100%\" bgcolor=\"FF8A01\" cellspacing=\"0\" cellpadding=\"0\">
		 <tr><td width=\"142\" align=\"center\"><a href=\"index.php\"><img src=\"themes/Alloy/images/logo.gif\" border=\"0\" align=\"center\"></a></td>
		 <td width=\"468\" align=\"center\">";
	if ($banners) {
		include ("banners.php");
	}
    $public_msg = public_message(); 
    echo "$public_msg";
	echo "</td>
		 <td width=\"140\" valign=\"middle\" align=\"center\">
		 <form action=\"modules.php?name=Search\" method=\"post\">
		 <input type=\"text\" name=\"query\" size=\"15\">
		 <br><input type=\"submit\" value=\""._SEARCH."\">
		 </td></tr></form>
		 </table>
		 </td></tr>";
/* Start Body */
	echo "<tr><td width=\"100%\">
		 <table width=\"100%\" cellpadding=\"2\" cellspacing=\"1\" bgcolor=\"FF8A01\">
		 <tr bgcolor=\"FFB95F\"><td align=\"center\"><a href=\"index.php\">Inicio</td><td align=\"center\"><a href=\"modules.php?name=Downloads\">Descargas</td><td align=\"center\"><a href=\"modules.php?name=Forums\">Foros</td><td align=\"center\"><a href=\"modules.php?name=My_eGallery\">Galeria</td><td align=\"center\"><a href=\"modules.php?name=Your_Account\">Tu Cuenta</td><td align=\"center\"><a href=\"modules.php?name=Web_Links\">Enlaces</td><td align=\"center\"><a href=\"modules.php?name=Submit_News\">Enviar Noticia</td></tr>
		 </table>
		 <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">
		 <tr><td width=\"140\" valign=\"top\" bgcolor=\"FF8A01\"><br>";
		 blocks(left);
	echo "</td><td><img src=\"themes/Alloy/images/pixel.gif\" width=\"6\"></td><td width=\"100%\" valign=\"top\"><img src=\"themes/Alloy/images/pixel.gif\" height=\"6\">";
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
    global $index, $foot1, $foot2, $foot3, $foot4;
	echo "</td><td><img src=\"themes/Alloy/images/pixel.gif\" width=\"6\"></td>";
	if ($index == 1) {
		echo "<td width=\"140\" valign=\"top\" bgcolor=\"FF8A01\"><br>";
		blocks(right);
		echo "</td>";
	}
	echo "</tr></table>
		 </td></tr>
		 <tr><td colspan=3 width=\"100%\" align=\"center\" bgcolor=\"FF8A01\"><table width=\"100%\" align=\"center\">
		 <tr><td align=\"center\">$foot1 $foot2 $foot3 $foot4<br>
		 Site Engine by <a href=\"http://www.phpnuke.org\">PHP-Nuke</a><br>
		 <br>Theme created by Leon Rigsby III of <a href=\"http://www.rigsnet.com\">Rigsnet.com</a> :: Traducido y Modificado Por <a href=\"http://www.nukebazar.com\">:: DragónNB ::</a><br>
		 </td></tr>
		 </table>
		 </td></tr>
		 </table>";
}

/************************************************************/
/* FormatStory                                              */
/*                                                          */
/* Here we'll format the look of the stories in our site.   */
/* If you dig a little on the function you will notice that */
/* we set different stuff for anonymous, admin and users    */
/* when displaying the story.                               */
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
/* Function themeindex()                                    */
/*                                                          */
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
    echo "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" width=\"100%\"><tr><td>\n"
	."<table border=\"0\" cellpadding=\"1\" cellspacing=\"0\" bgcolor=\"#FFB95F\" width=\"100%\"><tr><td>\n"
	."<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" bgcolor=\"#FF8A01\" width=\"100%\"><tr><td align=\"left\">\n"
	."<font color=\"#ffffff\"><b>$title</b></font>\n"
	."</td></tr></table></td></tr></table>\n"
	."<font color=\"#999999\"><b><a href=\"modules.php?name=News&amp;new_topic=$topic\"><img src=\"$t_image\" border=\"0\" Alt=\"$topictext\" align=\"right\" hspace=\"10\" vspace=\"10\"></a></B></font>\n";
    FormatStory($thetext, $notes, $aid, $informant);
    echo "</td></tr></table><br>\n"
	."<table border=\"0\" cellpadding=\"1\" cellspacing=\"0\" bgcolor=\"#eeeeee\" width=\"100%\"><tr><td>\n"
	."<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" bgcolor=\"#ffffff\" width=\"100%\"><tr><td align=\"center\">\n"
	."<font color=\"#999999\" size=\"1\">"._POSTEDBY." ";
    formatAidHeader($aid);
    echo " "._ON." $time $timezone ($counter "._READS.")<br></font>\n"
	."<font class=\"content\">$morelink</font>\n"
	."</td></tr></table></td></tr></table>\n"
	."<br>\n\n\n";
}

/************************************************************/
/* Function themeindex()                                    */
/*                                                          */
/* This function format the stories on the story page, when */
/* you click on that "Read More..." link in the home        */
/************************************************************/

function themearticle ($aid, $informant, $datetime, $title, $thetext, $topic, $topicname, $topicimage, $topictext) {
    global $admin, $sid, $tipath;
    $ThemeSel = get_theme();
    if (file_exists("themes/$ThemeSel/images/topics/$topicimage")) {
	$t_image = "themes/$ThemeSel/images/topics/$topicimage";
    } else {
	$t_image = "$tipath$topicimage";
    }
    echo "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" width=\"100%\"><tr><td>\n"
        ."<table border=\"0\" cellpadding=\"1\" cellspacing=\"0\" bgcolor=\"#000000\" width=\"100%\"><tr><td>\n"
        ."<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" bgcolor=\"#808080\" width=\"100%\"><tr><td align=\"left\">\n"
        ."<font class=\"option\" color=\"#363636\"><b>$title</b></font><br>\n"
        ."<font class=\"content\">"._POSTEDON." $datetime "._BY." ";
    formatAidHeader($aid);
    echo "</td></tr></table></td></tr></table><br>";
    echo "<a href=\"modules.php?name=News&amp;new_topic=$topic\"><img src=\"$t_image\" border=\"0\" Alt=\"$topictext\" align=\"right\" hspace=\"10\" vspace=\"10\"></a>\n";
    FormatStory($thetext, $notes="", $aid, $informant);
    echo "</td></tr></table><br>\n\n\n";
}

/************************************************************/
/* Function themesidebox()                                  */
/*                                                          */
/* Control look of your blocks. Just simple.                */
/************************************************************/

function themesidebox($title, $content) {
    echo "<table width=\"140\" cellpadding=\"0\" cellspacing=\"0\">
		 <tr><td width=\"140\" bgcolor=\"FFB95F\"><img src=\"themes/Alloy/images/pixel.gif\" width=\"121\" height=\"1\" align=\"center\"></td></tr>
		 <tr><td width=\"140\" bgcolor=\"FFB95F\" valign=\"middle\">&nbsp;<img src=\"themes/Alloy/images/arrow.gif\" align=\"center\">&nbsp;<font color=\"black\" size=\"3\"><big><b>$title</b></big></font></td></tr>
		 <tr><td width=\"140\" bgcolor=\"FFB95F\"><img src=\"themes/Alloy/images/pixel.gif\" width=\"121\" height=\"1\" align=\"center\"></td></tr>
		 <tr><td width=\"140\" bgcolor=\"FF8A01\">
		 <table width=\"100%\" cellpadding=\"4\" cellspacing=\"0\"<tr><td width=\"100%\">$content</td></tr></table></tr></td>
		 </table><br>";
}
?>