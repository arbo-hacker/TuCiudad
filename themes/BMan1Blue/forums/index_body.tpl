<table width="100%" cellspacing="0" cellpadding="2" border="0" align="center">
  <tr> 
	<td align="left" valign="bottom"><span class="nav"><a href="{U_INDEX}" class="nav">{L_INDEX}</a></span></td>
  </tr>
</table>

<table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline">
  <tr> 
	<th colspan="2" class="thCornerL" height="25" nowrap="nowrap">&nbsp;{L_FORUM}&nbsp;</th>
	<th width="50" class="thTop" nowrap="nowrap">&nbsp;{L_TOPICS}&nbsp;</th>
	<th width="50" class="thTop" nowrap="nowrap">&nbsp;{L_POSTS}&nbsp;</th>
	<th class="thCornerR" nowrap="nowrap">&nbsp;{L_LASTPOST}&nbsp;</th>
  </tr>
  <!-- BEGIN catrow -->
  <tr> 
	<td class="catLeft" colspan="5" height="28"><span class="cattitle"><a href="{catrow.U_VIEWCAT}" class="cattitle">{catrow.CAT_DESC}</a></span></td>
  </tr>
  <!-- BEGIN forumrow -->
  <tr> 
	<td class="row2" align="center" valign="middle" height="50"><img src="{catrow.forumrow.FORUM_FOLDER_IMG}" width="46" height="25" alt="{catrow.forumrow.L_FORUM_FOLDER_ALT}" title="{catrow.forumrow.L_FORUM_FOLDER_ALT}" /></td>
	<td class="row1" width="100%" height="50"><span class="forumlink"> <a href="{catrow.forumrow.U_VIEWFORUM}" class="forumlink">{catrow.forumrow.FORUM_NAME}</a><br />
	  </span> <span class="genmed">{catrow.forumrow.FORUM_DESC}<br />
	  </span><span class="gensmall">{catrow.forumrow.L_MODERATOR} {catrow.forumrow.MODERATORS}</span></td>
	<td class="row2" align="center" valign="middle" height="50"><span class="gensmall">{catrow.forumrow.TOPICS}</span></td>
	<td class="row2" align="center" valign="middle" height="50"><span class="gensmall">{catrow.forumrow.POSTS}</span></td>
	<td class="row2" align="center" valign="middle" height="50" nowrap="nowrap"> <span class="gensmall">{catrow.forumrow.LAST_POST}</span></td>
  </tr>
  <!-- END forumrow -->
  <!-- END catrow -->
  <tr>
  	<td class="catLeft" colspan="5" height="28"><table width="100%" cellpadding="0" cellspacing="0" border="0"
  		<tr>
  			<td align="left" valign="middle"><span class="gensmall"><a href="{U_MARK_READ}" class="gensmallmark">{L_MARK_FORUMS_READ}</a></span></td>
  			<td align="right" valign="middle"><span class="gensmall">{S_TIMEZONE}</span></td>
  		</tr>
  	</table></td>
  </tr>
</table>

&nbsp;<br />

<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
  <tr> 
	<td class="catHead" colspan="2" height="28"><span class="cattitle">Welcome To {SITENAME}</span></td>
  </tr>
  <tr> 
	<td class="row1" align="center" valign="middle" rowspan="2"><img src="themes/BMan1Blue/forums/images/whosonline.gif" alt="{L_WHO_IS_ONLINE}" /></td>
	<td class="row1" width="100%"><table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td align="left" valign="middle"><span class="gensmall">{TOTAL_POSTS}<br />{TOTAL_USERS}<br />{NEWEST_USER}</span></td>
			<td align="right" valign="middle"><span class="gensmall">
			<!-- BEGIN switch_user_logged_in -->
			{LAST_VISIT_DATE}<br />
			<!-- END switch_user_logged_in -->
			{CURRENT_TIME}</span></td>
		</tr>
	</table></td>
  </tr>
  <tr> 
	<td class="row1"><table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td align="left" valign="middle"><span class="gensmall">{TOTAL_USERS_ONLINE}<br />{RECORD_USERS}<br />[<b>{L_WHOSONLINE_ADMIN}</b>]&nbsp;[<b>{L_WHOSONLINE_MOD}</b>]<br />{LOGGED_IN_USER_LIST}</span></td>
			<td align="right" valign="middle" class="gensmall">
			<!-- BEGIN switch_user_logged_in -->
			<a href="{U_SEARCH_NEW}" class="gensmall">{L_SEARCH_NEW}</a><br /><a href="{U_SEARCH_SELF}" class="gensmall">{L_SEARCH_SELF}</a><br />
			<!-- END switch_user_logged_in -->
			<a href="{U_SEARCH_UNANSWERED}" class="gensmall">{L_SEARCH_UNANSWERED}</a></td>
		</tr>
	</table></td>
  </tr>
  <!-- BEGIN switch_user_logged_out -->

  <!-- END switch_user_logged_out -->
</table>

<br clear="all" />

<table class="otherline" cellspacing="3" border="0" align="center" cellpadding="0">
  <tr> 
	<td width="20" align="center"><img src="themes/BMan1Blue/forums/images/folder_new.gif" alt="{L_NEW_POSTS}"/></td>
	<td><span class="gensmall">{L_NEW_POSTS}</span></td>
	<td>&nbsp;&nbsp;</td>
	<td width="20" align="center"><img src="themes/BMan1Blue/forums/images/folder.gif" alt="{L_NO_NEW_POSTS}" /></td>
	<td><span class="gensmall">{L_NO_NEW_POSTS}</span></td>
	<td>&nbsp;&nbsp;</td>
	<td width="20" align="center"><img src="themes/BMan1Blue/forums/images/folder_lock.gif" alt="{L_FORUM_LOCKED}" /></td>
	<td><span class="gensmall">{L_FORUM_LOCKED}</span></td>
  </tr>
</table>
