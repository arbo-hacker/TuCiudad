<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="{S_CONTENT_DIRECTION}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={S_CONTENT_ENCODING}">
<meta http-equiv="Content-Style-Type" content="text/css">
{META}
{NAV_LINKS}
<title>{SITENAME} :: {PAGE_TITLE}</title>
<link rel="stylesheet" href="themes/SimpleTech/style/style.css" type="text/css">

<!-- BEGIN switch_enable_pm_popup -->
<script language="Javascript" type="text/javascript">
<!--
	if ( {PRIVATE_MESSAGE_NEW_FLAG} )
	{
		window.open('{U_PRIVATEMSGS_POPUP}', '_phpbbprivmsg', 'HEIGHT=225,resizable=yes,WIDTH=400');;
	}
//-->
</script>
<!-- END switch_enable_pm_popup -->
<SCRIPT LANGUAGE="JavaScript">
<!--

function newImage(arg) {
	if (document.images) {
		rslt = new Image();
		rslt.src = arg;
		return rslt;
	}
}

function changeImages() {
	if (document.images && (preloadFlag == true)) {
		for (var i=0; i<changeImages.arguments.length; i+=2) {
			document[changeImages.arguments[i]].src = changeImages.arguments[i+1];
		}
	}
}

var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		SimpleTech_Forum_01_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_01-over.gif");
		SimpleTech_Forum_02_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_02-over.gif");
		SimpleTech_Forum_03_SimpleTech_Forum_02_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_03-SimpleT.gif");
		SimpleTech_Forum_03_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_03-over.gif");
		SimpleTech_Forum_04_SimpleTech_Forum_03_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_04-SimpleT.gif");
		SimpleTech_Forum_04_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_04-over.gif");
		SimpleTech_Forum_05_SimpleTech_Forum_04_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_05-SimpleT.gif");
		SimpleTech_Forum_05_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_05-over.gif");
		SimpleTech_Forum_06_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_06-over.gif");
		SimpleTech_Forum_07_SimpleTech_Forum_06_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_07-SimpleT.gif");
		SimpleTech_Forum_07_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_07-over.gif");
		SimpleTech_Forum_11_SimpleTech_Forum_02_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_11-SimpleT.gif");
		SimpleTech_Forum_12_SimpleTech_Forum_02_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_12-SimpleT.gif");
		SimpleTech_Forum_logo_SimpleTech_Forum_01_over = newImage("themes/SimpleTech/forums/images/SimpleTech-Forum_logo-Simpl.gif");
		preloadFlag = true;
	}
}

// -->
</SCRIPT>

</head>
<body bgcolor="{T_BODY_BGCOLOR}" text="{T_BODY_TEXT}" link="{T_BODY_LINK}" vlink="{T_BODY_VLINK}" ONLOAD="preloadImages();">

<a name="top"></a>

<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD>
			<A HREF="modules.php?name=Forums"
				ONMOUSEOVER="changeImages('SimpleTech_Forum_01', 'themes/SimpleTech/forums/images/SimpleTech-Forum_01-over.gif', 'SimpleTech_Forum_logo', 'themes/SimpleTech/forums/images/SimpleTech-Forum_logo-Simpl.gif'); return true;"
				ONMOUSEOUT="changeImages('SimpleTech_Forum_01', 'themes/SimpleTech/forums/images/SimpleTech-Forum_01.gif', 'SimpleTech_Forum_logo', 'themes/SimpleTech/forums/images/SimpleTech-Forum_logo.gif'); return true;">
				<IMG NAME="SimpleTech_Forum_01" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_01.gif" WIDTH=71 HEIGHT=20 BORDER=0 ALT="Forum home"></A></TD>
		<TD>
			<A HREF="{U_FAQ}"
				ONMOUSEOVER="changeImages('SimpleTech_Forum_02', 'themes/SimpleTech/forums/images/SimpleTech-Forum_02-over.gif', 'SimpleTech_Forum_03', 'themes/SimpleTech/forums/images/SimpleTech-Forum_03-SimpleT.gif', 'SimpleTech_Forum_11', 'themes/SimpleTech/forums/images/SimpleTech-Forum_11-SimpleT.gif', 'SimpleTech_Forum_12', 'themes/SimpleTech/forums/images/SimpleTech-Forum_12-SimpleT.gif');
return true;"
				ONMOUSEOUT="changeImages('SimpleTech_Forum_02', 'themes/SimpleTech/forums/images/SimpleTech-Forum_02.gif', 'SimpleTech_Forum_03', 'themes/SimpleTech/forums/images/SimpleTech-Forum_03.gif', 'SimpleTech_Forum_11', 'themes/SimpleTech/forums/images/SimpleTech-Forum_11.gif', 'SimpleTech_Forum_12', 'themes/SimpleTech/forums/images/SimpleTech-Forum_12.gif');
return true;">
				<IMG NAME="SimpleTech_Forum_02" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_02.gif" WIDTH=70 HEIGHT=20 BORDER=0 ALT="FAQ"></A></TD>
		<TD>
			<A HREF="{U_SEARCH}"
				ONMOUSEOVER="changeImages('SimpleTech_Forum_03', 'themes/SimpleTech/forums/images/SimpleTech-Forum_03-over.gif', 'SimpleTech_Forum_04', 'themes/SimpleTech/forums/images/SimpleTech-Forum_04-SimpleT.gif'); return true;"
				ONMOUSEOUT="changeImages('SimpleTech_Forum_03', 'themes/SimpleTech/forums/images/SimpleTech-Forum_03.gif', 'SimpleTech_Forum_04', 'themes/SimpleTech/forums/images/SimpleTech-Forum_04.gif'); return true;">
				<IMG NAME="SimpleTech_Forum_03" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_03.gif" WIDTH=70 HEIGHT=20 BORDER=0 ALT="Search"></A></TD>
		<TD>
			<A HREF="modules.php?name=Members_List"
				ONMOUSEOVER="changeImages('SimpleTech_Forum_04', 'themes/SimpleTech/forums/images/SimpleTech-Forum_04-over.gif', 'SimpleTech_Forum_05', 'themes/SimpleTech/forums/images/SimpleTech-Forum_05-SimpleT.gif'); return true;"
				ONMOUSEOUT="changeImages('SimpleTech_Forum_04', 'themes/SimpleTech/forums/images/SimpleTech-Forum_04.gif', 'SimpleTech_Forum_05', 'themes/SimpleTech/forums/images/SimpleTech-Forum_05.gif'); return true;">
				<IMG NAME="SimpleTech_Forum_04" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_04.gif" WIDTH=65 HEIGHT=20 BORDER=0 ALT="members list"></A></TD>
		<TD>
			<A HREF="{U_GROUP_CP}"
				ONMOUSEOVER="changeImages('SimpleTech_Forum_05', 'themes/SimpleTech/forums/images/SimpleTech-Forum_05-over.gif'); return true;"
				ONMOUSEOUT="changeImages('SimpleTech_Forum_05', 'themes/SimpleTech/forums/images/SimpleTech-Forum_05.gif'); return true;">
				<IMG NAME="SimpleTech_Forum_05" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_05.gif" WIDTH=65 HEIGHT=20 BORDER=0 ALT="User Group"></A></TD>
		<TD>
			<A HREF="{U_PROFILE}"
				ONMOUSEOVER="changeImages('SimpleTech_Forum_06', 'themes/SimpleTech/forums/images/SimpleTech-Forum_06-over.gif', 'SimpleTech_Forum_07', 'themes/SimpleTech/forums/images/SimpleTech-Forum_07-SimpleT.gif'); return true;"
				ONMOUSEOUT="changeImages('SimpleTech_Forum_06', 'themes/SimpleTech/forums/images/SimpleTech-Forum_06.gif', 'SimpleTech_Forum_07', 'themes/SimpleTech/forums/images/SimpleTech-Forum_07.gif'); return true;">
				<IMG NAME="SimpleTech_Forum_06" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_06.gif" WIDTH=65 HEIGHT=20 BORDER=0 ALT="Profile"></A></TD>
		<TD>
			<A HREF="modules.php?name=Private_Messages"
				ONMOUSEOVER="changeImages('SimpleTech_Forum_07', 'themes/SimpleTech/forums/images/SimpleTech-Forum_07-over.gif'); return true;"
				ONMOUSEOUT="changeImages('SimpleTech_Forum_07', 'themes/SimpleTech/forums/images/SimpleTech-Forum_07.gif'); return true;">
				<IMG NAME="SimpleTech_Forum_07" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_07.gif" WIDTH=65 HEIGHT=20 BORDER=0 ALT="Private msgs"></A></TD>
		<TD ROWSPAN=3>
			<IMG SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_08.gif" WIDTH=5 HEIGHT=130></TD>
		<TD ROWSPAN=3 BACKGROUND="themes/SimpleTech/forums/images/SimpleTech-Forum_full.gif" WIDTH=100% HEIGHT=130></TD>
		<TD ROWSPAN=3>
			<IMG SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_10.gif" WIDTH=66 HEIGHT=130></TD>
	</TR>
	<TR>
		<TD COLSPAN=2>
			<A HREF="http://mtechnik.net" TARGET="_blank">
				<IMG NAME="SimpleTech_Forum_11" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_11.gif" WIDTH=141 HEIGHT=50 BORDER=0 ALT="MDesigns"></A></TD>
		<TD COLSPAN=5>
			<IMG NAME="SimpleTech_Forum_12" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_12.gif" WIDTH=330 HEIGHT=50></TD>
	</TR>
	<TR>
		<TD COLSPAN=4>
			<IMG NAME="SimpleTech_Forum_logo" SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_logo.gif" WIDTH=276 HEIGHT=60></TD>
		<TD COLSPAN=3>
			<IMG SRC="themes/SimpleTech/forums/images/SimpleTech-Forum_14.gif" WIDTH=195 HEIGHT=60></TD>
	</TR>
</TABLE>
			<table width="100%" cellspacing="0" cellpadding="10" border="0" align="center"> 
	<tr> 
		<td>

			 
				
</td>
			</tr>
		</table>
