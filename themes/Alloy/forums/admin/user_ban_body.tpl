
<h1>{L_BAN_TITLE}</h1>

<p>{L_BAN_EXPLAIN}</p>

<form method="post" action="{S_BANLIST_ACTION}"><table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="forumline">
	<tr> 
	  <th class="thHead" colspan="2">{L_BAN_USER}</th>
	</tr>
	<tr> 
	  <td class="row1">{L_USERNAME}: <br /><span class="gensmall">{L_BAN_USER_EXPLAIN}</span></td>
	  <td class="row2">{S_BAN_USERLIST_SELECT}</td>
	</tr>
	<tr> 
	  <th class="thHead" colspan="2">{L_UNBAN_USER}</th>
	</tr>
	<tr> 
	  <td class="row1">{L_USERNAME}: <br /><span class="gensmall">{L_UNBAN_USER_EXPLAIN}</span></td>
	  <td class="row2">{S_UNBAN_USERLIST_SELECT}</td>
	</tr>
	<tr> 
	  <th class="thHead" colspan="2">{L_BAN_IP}</th>
	</tr>
	<tr> 
	  <td class="row1">{L_IP_OR_HOSTNAME}: <br /><span class="gensmall">{L_BAN_IP_EXPLAIN}</span></td>
	  <td class="row2"><input type="text" name="ban_ip" size="35" /></td>
	</tr>
	<tr> 
	  <th class="thHead" colspan="2">{L_UNBAN_IP}</th>
	</tr>
	<tr> 
	  <td class="row1">{L_IP_OR_HOSTNAME}: <br /><span class="gensmall">{L_UNBAN_IP_EXPLAIN}</span></td>
	  <td class="row2">{S_UNBAN_IPLIST_SELECT}</td>
	</tr>
	<tr> 
	  <th class="thHead" colspan="2">{L_BAN_EMAIL}</th>
	</tr>
	<tr> 
	  <td class="row1">{L_EMAIL_ADDRESS}: <br /><span class="gensmall">{L_BAN_EMAIL_EXPLAIN}</span></td>
	  <td class="row2"><input type="text" name="ban_email" size="35" /></td>
	</tr>
	<tr> 
	  <th class="thHead" colspan="2">{L_UNBAN_EMAIL}</th>
	</tr>
	<tr> 
	  <td class="row1">{L_EMAIL_ADDRESS}: <br /><span class="gensmall">{L_UNBAN_EMAIL_EXPLAIN}</span></td>
	  <td class="row2">{S_UNBAN_EMAILLIST_SELECT}</td>
	</tr>
	<tr> 
	  <td class="catBottom" colspan="2" align="center"><input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />&nbsp;&nbsp;<input type="reset" value="{L_RESET}" class="liteoption" /></td>
	</tr>
</table>{S_HIDDEN_FIELDS} </form>

<p>{L_BAN_EXPLAIN_WARN}</p>
