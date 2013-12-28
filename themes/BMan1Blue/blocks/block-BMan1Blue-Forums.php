
<?php

########################################################################
# PHP-Nuke Block: BMan1Blue Center Forum Block v.1.0 		       #
# Made for PHP-Nuke 6.5     					       #
#                                                                      #
# Made by mikem http://www.nukemods.com                                #
# This block is made only to match the BMan1Blue Theme pack            #
########################################################################
# This program is free software. You can redistribute it and/or modify #
# it under the terms of the GNU General Public License as published by #
# the Free Software Foundation; either version 2 of the License.       # 
# If you modify this, let me know for fun. =)                          #
########################################################################  

if (eregi("block-BMan1Blue-Forum.php",$PHP_SELF)) {
    Header("Location: index.php");
    die();
}
	
global $prefix, $dbi, $sitename, $admin;

$HideViewReadOnly = 1;
    		
$Last_New_Topics  = 5;
$show = "  <tr> 
    <td height=\"28\" colspan=\"6\" align=\"center\" class=\"catbottom\" background=\"themes/Bman1Blue/forums/images/cellpic1.gif\">&nbsp;</td>
  </tr>
</table></td>
        </tr>
      </table></td>
  </tr>
</table>";

$Count_Topics = 0;
$Topic_Buffer = "";
$result = sql_query( "SELECT topic_id, forum_id, topic_last_post_id, topic_title, topic_poster, topic_views, topic_replies, topic_moved_id FROM ".$prefix."_bbtopics ORDER BY topic_last_post_id DESC", $dbi );
while( list( $topic_id, $forum_id, $topic_last_post_id, $topic_title, $topic_poster, $topic_views, $topic_replies, $topic_moved_id ) = sql_fetch_row( $result, $dbi ) )

{
   $skip_display = 0;
   if( $HideViewReadOnly == 1 )
   {
      $result1 = sql_query( "SELECT auth_view, auth_read FROM ".$prefix."_bbforums where forum_id = '$forum_id'", $dbi );
      list( $auth_view, $auth_read ) = sql_fetch_row( $result1, $dbi );
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
    <td height=\"34\" nowrap bgcolor=\"#C0E0FF\" class=\"row1\"><img src=\"themes/Bman1Blue/forums/images/folder_new.gif\" border=\"0\" /></td>
    <td width=\"100%\" bgcolor=\"#D4EAFE\" class=\"row1\">&nbsp;<a href=\"modules.php?name=Forums&file=viewtopic&t=$topic_id#$topic_last_post_id\">$topic_title</a></td>
    <td align=\"center\" bgcolor=\"#C0E0FF\" class=\"row2\">$topic_replies</td>
    <td align=\"center\" bgcolor=\"#D4EAFE\" class=\"row3\"><a href=\"modules.php?name=Forums&file=profile&mode=viewprofile&u=$sifra\">$avtor</a></td>
    <td align=\"center\" bgcolor=\"#C0E0FF\" class=\"row2\">$topic_views</td>
    <td align=\"center\" nowrap bgcolor=\"#D4EAFE\" class=\"row3\"><font size=\"-2\"><i>&nbsp;&nbsp;$post_time&nbsp;</i></font><br>
      <a href=\"modules.php?name=Forums&file=profile&mode=viewprofile&u=$user_id\">$username</a>&nbsp;<a href=\"modules.php?name=Forums&file=viewtopic&p=$topic_last_post_id#$topic_last_post_id\"></a><img src=\"themes/Bman1Blue/forums/images/icon_minipost_new.gif\"></td>
  </tr>";
}
   
   if( $Last_New_Topics == $Count_Topics ) { break 1; }
   
}

    $content .= "<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"1\">
  <tr>
    <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"1\">
        <tr>
          <td bgcolor=\"#336699\"><table width=\"100%\" border=\"0\" cellpadding=\"2\" cellspacing=\"1\">
  <tr> 
    <th height=\"28\" colspan=\"2\" align=\"center\" nowrap background=\"themes/Bman1Blue/forums/images/cellpic3.gif\" class=\"thcornerl\"><font color=\"#99CCFF\"><strong>Temas</strong></font></th>
    <th width=\"50\" align=\"center\" nowrap background=\"themes/Bman1Blue/forums/images/cellpic3.gif\" class=\"thtop\"><font color=\"#99CCFF\"><strong>&nbsp;Respuestas&nbsp;</strong></font></th>
    <th width=\"100\" align=\"center\" nowrap background=\"themes/Bman1Blue/forums/images/cellpic3.gif\" class=\"thtop\"><font color=\"#99CCFF\"><strong>&nbsp;Autor&nbsp;</strong></font></th>
    <th width=\"50\" align=\"center\" nowrap background=\"themes/Bman1Blue/forums/images/cellpic3.gif\" class=\"thtop\"><font color=\"#99CCFF\"><strong>&nbsp;Vistas&nbsp;</strong></font></th>
    <th align=\"center\" nowrap background=\"themes/Bman1Blue/forums/images/cellpic3.gif\" class=\"thcornerr\"><font color=\"#99CCFF\"><strong>&nbsp;Ultimo mensaje por&nbsp;</strong></font></th>
  </tr>";
    $content .= "$viewlast";

 $content .= "$show";

?>