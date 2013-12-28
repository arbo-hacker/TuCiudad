<table width="100%" border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td class="nav"><span class="maintitle">{SITENAME}</span>
		<br />
		<a href="{U_PORTAL}">{L_HOME}</a></td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td width="150" valign="top"><table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th>{L_BOARD_NAVIGATION}</th>
</tr>
<tr>
	<td class="row1"><span class="genmed"><a href="{U_PORTAL}">{L_HOME}</a></span></td>
</tr>
<tr>
	<td class="row1"><span class="genmed"><a href="{U_INDEX}">{L_FORUM}</a></span></td>
</tr>
<tr>
	<td class="row1"><span class="genmed"><a href="{U_MEMBERLIST}">{L_MEMBERLIST}</a></span></td>
</tr>
<tr>
	<td class="row1"><span class="genmed"><a href="{U_FAQ}">{L_FAQ}</a></span></td>
</tr>
<tr> 
<td class="row1"><span class="genmed"><a href="{U_SEARCH}">{L_SEARCH}</a></span></td>
</tr>
</table>
<br />
<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th>{L_STATISTICS}</th>
</tr>
<tr> 
<td class="row1"><span class="gensmall">{TOTAL_USERS}<br />
{NEWEST_USER}<br />
<br/>
{TOTAL_POSTS} {TOTAL_TOPICS}</span></td>
</tr>
</table>
<br />
<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th>Links</th>
</tr>
<tr>
	<td class="row1"><span class="genmed"><a href="http://www.forumimages.com/">Forum Images</a></span></td>
</tr>
<tr>
<td class="row1"><span class="genmed"><a href="http://smartor.is-root.com/">Smartor</a></span></td>
</tr>
<tr>
<td align="center" class="row2"><span class="gensmall">ezPortal by <a href="http://smartor.is-root.com/" target="_blank">Smartor</a></span></td>
</tr>
</table>
<br />
</td>
<td width="10"><img src="images/spacer.gif" alt="" width="10" height="30" /></td>
<td valign="top">
<!-- BEGIN welcome_text -->
<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th>{SITENAME}</th>
</tr>
<tr> 
<td class="row1" align="left"><p class="genmed">{WELCOME_TEXT}</p></td>
</tr>
</table>
<br /> 
<!-- END welcome_text -->
<!-- BEGIN fetchpost_row -->
<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<td class="cat"><span class="genmed"> {fetchpost_row.TITLE}</span></td>
</tr>
<tr> 
<td class="row2"><span class="gensmall">{L_POSTED}: {fetchpost_row.TIME} by {fetchpost_row.POSTER}</span></td>
</tr>
<tr> 
<td class="row1"><span class="genmed">{fetchpost_row.TEXT}<br /><br />
{fetchpost_row.OPEN}<a href="{fetchpost_row.U_READ_FULL}">{fetchpost_row.L_READ_FULL}</a>{fetchpost_row.CLOSE}</span></td>
</tr>
<tr> 
<td height="20" class="row3"><span class="gensmall">{fetchpost_row.REPLIES} {L_COMMENTS} :: <a href="{fetchpost_row.U_POST_COMMENT}">{L_POST_COMMENT}</a></span></td>
</tr>
</table>
<br /> 
<!-- END fetch_post_row -->
</td>
<td width="10"><img src="images/spacer.gif" alt="" width="10" height="30" /></td>
<td width="150" valign="top"> 
<!-- BEGIN switch_user_logged_in -->
<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th>{L_NAME_WELCOME}</th>
</tr>
<tr> 
<td align="center" class="row1"><br />
{AVATAR_IMG}<br /><br />
<span class="name">{U_NAME_LINK}<br /></span>
<span class="gensmall">{LAST_VISIT_DATE}<br />
{CURRENT_TIME}<br />
<a href="{U_SEARCH_NEW}">{L_SEARCH_NEW}</a><br />
<a href="{U_SEARCH_UNANSWERED}">{L_SEARCH_UNANSWERED}</a><br />
<a href="{U_SEARCH_SELF}">{L_SEARCH_SELF}</a></span></td>
</tr>
</table>
<br /> 
<!-- END switch_user_logged_in -->
<!-- BEGIN switch_user_logged_out -->
<form method="post" action="{S_LOGIN_ACTION}">
<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th>{L_LOGIN}</th>
</tr>
<tr> 
<td align="center" class="row1"><span class="gensmall"> 
<input type="hidden" name="redirect" value="{U_PORTAL}" />
{L_USERNAME}:<br />
<input class="post" type="text" name="username" size="15" />
<br />
{L_PASSWORD}:<br />
<input class="post" type="password" name="password" size="15" />
<br />
</span> <table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><input class="text" type="checkbox" name="autologin" /></td>
<td class="gensmall">&nbsp;{L_REMEMBER_ME}</td>
</tr>
</table>
<br/> <input type="submit" class="mainoption" name="login" value="{L_LOGIN}" /> 
<br /> <br /> <a href="{U_SEND_PASSWORD}" class="gensmall">{L_SEND_PASSWORD}</a><br /> 
<br /><p class="gensmall">{L_REGISTER_NEW_ACCOUNT}</p></td>
</tr>
</table>
<br />
</form>
<!-- END switch_user_logged_out -->
<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th>{L_WHO_IS_ONLINE}</th>
</tr>
<tr> 
<td class="row1">
<p class="gensmall">{TOTAL_USERS_ONLINE}<br />
<br />
{LOGGED_IN_USER_LIST}<br /><br />
</p>
<p class="gensmall" align="center">[ <a href="{U_VIEWONLINE}">{L_VIEW_COMPLETE_LIST}</a> ]</p>
<br />
<p class="gensmall">{RECORD_USERS}</p></td>
</tr>
</table>
<br />
<form method="post" action="{S_POLL_ACTION}" />
<table width="100%" cellpadding="3" cellspacing="1" border="0" class="forumline">
<tr> 
<th>{L_POLL}</th>
</tr>
<tr> 
<td class="row1">
<div class="genmed" align="center"><strong>{S_POLL_QUESTION}</strong></div>
<br /> 
<!-- BEGIN poll_option_row -->
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><input type="radio" name="vote_id" value="{poll_option_row.OPTION_ID}" /></td><td class="gensmall">&nbsp;{poll_option_row.OPTION_TEXT}&nbsp;[{poll_option_row.VOTE_RESULT}]<br /> 
</td>
</tr>
</table>
<!-- END poll_option_row -->
<br /> 
<!-- BEGIN switch_user_logged_out -->
<p class="gensmall" align="center">{L_LOGIN_TO_VOTE}</p>
<!-- END switch_user_logged_out -->
<!-- BEGIN switch_user_logged_in -->
<div align="center">
<input type="submit" class="mainoption" name="submit" value="{L_VOTE_BUTTON}" {DISABLED} />
</div>
<input type="hidden" name="topic_id" value="{S_TOPIC_ID}" /> <input type="hidden" name="mode" value="vote" /> 
<br />
<!-- END switch_user_logged_in -->
</td>
</tr>
</table>
</form>
</td>
</tr>
</table>