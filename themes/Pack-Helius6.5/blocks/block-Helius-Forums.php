
<?php

########################################################################
# PHP-Nuke Block: Helius Center Forum Block v.2                        #
# Made for PHP-Nuke 6.5 and up                                         #
#                                                                      #
# Made by mikem http://www.nukecops.com                                #
########################################################################
# This program is free software. You can redistribute it and/or modify #
# it under the terms of the GNU General Public License as published by #
# the Free Software Foundation; either version 2 of the License.       # 
# If you modify this, let me know for fun. =)                          #
######################################################################## 

if (eregi("block-Helius-Forum.php",$PHP_SELF)) {
    Header("Location: index.php");
    die();
}
$HideViewReadOnly = 1;	
$Last_New_Topics  = 5;	
global $prefix, $dbi, $sitename;

$show = "  <tr> 
    <td bgcolor=\"#525E6E\" height=\"25\" colspan=\"6\" align=\"center\" background=\"themes/Helius/forums/images/top_center.gif\"></td>
  </tr>
</table></td>
        </tr>
      </table></td>
  </tr>
</table>";

$Count_Topics = 0;
$Topic_Buffer = "";
$result = sql_query( "SELECT t.topic_id, f.forum_name, f.forum_id, t.topic_last_post_id, t.topic_title, t.topic_poster, t.topic_views, t.topic_replies, t.topic_moved_id FROM ".$prefix."_bbtopics t, ".$prefix."_bbforums f where t.forum_id=f.forum_id ORDER BY topic_last_post_id DESC", $dbi );
while( list( $topic_id, $forum_name, $forum_id, $topic_last_post_id, $topic_title, $topic_poster, $topic_views, $topic_replies, $topic_moved_id ) = sql_fetch_row( $result, $dbi ) )

{
   $skip_display = 0;
   if( $HideViewReadOnly == 1 )
   {
      $result2 = sql_query( "SELECT auth_view, auth_read FROM ".$prefix."_bbforums where forum_id = '$forum_id'", $dbi );
      list( $auth_view, $auth_read ) = sql_fetch_row( $result2, $dbi );
      if( ( $auth_view != 0 ) or ( $auth_read != 0 ) ) { $skip_display = 1; }
   }
   
   if( $topic_moved_id != 0 )
   {
	  // Shadow Topic !!
      $skip_display = 1;
   }
   
   if( $skip_display == 0 )
   {
	  $Count_Topics += 1;

$result2 = sql_query("SELECT username, user_id FROM ".$prefix."_users where user_id='$topic_poster'", $dbi);
list($username, $user_id)=sql_fetch_row($result2, $dbi);
$avtor=$username;
$sifra=$user_id;

$result3 = sql_query("SELECT poster_id, FROM_UNIXTIME(post_time,'%m/%d/%Y at %H:%i') as post_time FROM ".$prefix."_bbposts where post_id='$topic_last_post_id'", $dbi);
list($poster_id, $post_time)=sql_fetch_row($result3, $dbi);

$result4 = sql_query("SELECT username, user_id FROM ".$prefix."_users where user_id='$poster_id'", $dbi);
list($username, $user_id)=sql_fetch_row($result4, $dbi);

            	          $viewlast .="  <tr> 
    <td height=\"34\" nowrap bgcolor=\"#EAEDF4\" class=\"row1\"><img src=\"themes/Helius/forums/images/folder_new.gif\" width=\"19\" height=\"18\" border=\"0\" /></td>
    <td width=\"100%\" bgcolor=\"#EAEDF4\" class=\"row1\">&nbsp;<b>$forum_name</b><br>&nbsp;&nbsp;<a href=\"modules.php?name=Forums&file=viewtopic&t=$topic_id#$topic_last_post_id\">$topic_title</a></td>
    <td align=\"center\" bgcolor=\"#F8F9FA\" class=\"row2\">$topic_replies</td>
    <td align=\"center\" bgcolor=\"#EAEDF4\" class=\"row3\"><a href=\"modules.php?name=Forums&file=profile&mode=viewprofile&u=$sifra\">$avtor</a></td>
    <td align=\"center\" bgcolor=\"#F8F9FA\" class=\"row2\">$topic_views</td>
    <td align=\"center\" nowrap bgcolor=\"#EAEDF4\" class=\"row3\"><font size=\"-2\"><i>&nbsp;&nbsp;$post_time&nbsp;</i></font><br>
      <a href=\"modules.php?name=Forums&file=profile&mode=viewprofile&u=$user_id\">$username</a>&nbsp;<a href=\"modules.php?name=Forums&file=viewtopic&t=$topic_id#$topic_last_post_id\"><img src=\"themes/Helius/forums/images/icon_minipost_new.gif\" border=\"0\" alt=\"Latest Post\"></a></td>
  </tr>";
}
   
   if( $Last_New_Topics == $Count_Topics ) { break 1; }
   
}

    $content .= "<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">
  <tr>
    <td bgcolor=\"#525E6E\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">
        <tr>
          <td><table width=\"100%\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\">
  <tr> 
    <th height=\"25\" colspan=\"2\" align=\"center\" nowrap background=\"themes/Helius/forums/images/top_center.gif\" class=\"thcornerl\"><font color=\"#364D67\"><strong>Forum/Topic</strong></font></th>
    <th width=\"50\" align=\"center\" nowrap background=\"themes/Helius/forums/images/top_center.gif\" class=\"thtop\"><font color=\"#364D67\"><strong>&nbsp;Replies&nbsp;</strong></font></th>
    <th width=\"100\" align=\"center\" nowrap background=\"themes/Helius/forums/images/top_center.gif\" class=\"thtop\"><font color=\"#364D67\"><strong>&nbsp;Author&nbsp;</strong></font></th>
    <th width=\"50\" align=\"center\" nowrap background=\"themes/Helius/forums/images/top_center.gif\" class=\"thtop\"><font color=\"#364D67\"><strong>&nbsp;Views&nbsp;</strong></font></th>
    <th align=\"center\" nowrap background=\"themes/Helius/forums/images/top_center.gif\" class=\"thcornerr\"><font color=\"#364D67\"><strong>&nbsp;Last Post&nbsp;</strong></font></th>
  </tr>";
    $content .= "$viewlast";

 $content .= "$show";

?>