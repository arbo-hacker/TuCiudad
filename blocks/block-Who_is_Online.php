<?php

########################################################################
# PHP-Nuke Block: Total Hits v0.1                                      #
#                                                                      #
# Copyright (c) 2001 by C. Verhoef (cverhoef@gmx.net)                  #
#                                                                      #
########################################################################
# This program is free software. You can redistribute it and/or modify #
# it under the terms of the GNU General Public License as published by #
# the Free Software Foundation; either version 2 of the License.       # 
########################################################################
#         Additional security & Abstraction layer conversion           #
#                           2003 chatserv                              #
#      http://www.nukefixes.com -- http://www.nukeresources.com        #
########################################################################

if (eregi("block-Who_is_Online.php", $_SERVER['SCRIPT_NAME'])) {
    Header("Location: index.php");
    die();
}

global $user, $cookie, $prefix, $db, $user_prefix;

cookiedecode($user);
$ip = $_SERVER["REMOTE_ADDR"];
$uname = $cookie[1];
if (!isset($uname)) {
    $uname = "$ip";
    $guest = 1;
}

$guest_online_num = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_session WHERE guest='1'"));
$member_online_num = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_session WHERE guest='0'"));

$who_online_num = $guest_online_num + $member_online_num;
$who_online = "<center><font class=\"content\">"._CURRENTLY." $guest_online_num "._GUESTS." $member_online_num "._MEMBERS."<br>";

$content = "$who_online";

if (is_user($user)) {
    if (is_active("Private_Messages")) {
	$row = $db->sql_fetchrow($db->sql_query("SELECT user_id FROM ".$user_prefix."_users WHERE username='$uname'"));
	$uid = intval($row['user_id']);
	$newpm = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_bbprivmsgs WHERE privmsgs_to_userid='$uid' AND (privmsgs_type='5' OR privmsgs_type='1')"));
    }
}

$row2 = $db->sql_fetchrow($db->sql_query("SELECT title FROM ".$prefix."_blocks WHERE bkey='online'"));
$title = $row2['title'];

if (is_user($user)) {
    $content .= "<br>"._YOUARELOGGED." <b>$uname</b>.<br>";
    if (is_active("Private_Messages")) {
	$row3 = $db->sql_fetchrow($db->sql_query("SELECT user_id FROM ".$user_prefix."_users WHERE username='$uname'"));
	$uid = intval($row3['user_id']);
	$numrow = $db->sql_numrows($db->sql_query("SELECT privmsgs_to_userid FROM ".$prefix."_bbprivmsgs WHERE privmsgs_to_userid='$uid' AND (privmsgs_type='1' OR privmsgs_type='5' OR privmsgs_type='0')"));
	$content .= ""._YOUHAVE." <a href=\"modules.php?name=Private_Messages\"><b>$numrow</b></a> "._PRIVATEMSG."";
    }
    $content .= "</font></center>";
} else {
    $content .= "<br>"._YOUAREANON."</font></center>";
}

?>