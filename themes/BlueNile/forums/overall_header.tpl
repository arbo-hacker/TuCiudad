<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="{S_CONTENT_DIRECTION}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={S_CONTENT_ENCODING}">
<meta http-equiv="Content-Style-Type" content="text/css">
{META}
{NAV_LINKS}
<title>{SITENAME} :: {PAGE_TITLE}</title>
<!-- link rel="stylesheet" href="themes/BlueNile/forums/forums.css" type="text/css" -->
<style type="text/css">
<!--

/*
  The original BlueNile Theme for phpBB version 6.X
  Created by TagCraig
  http://www.just4boyz.net
*/

 /* General page style. The scroll bar colours only visible in IE5.5+ */
body {
	background-color: #E7E9F7;
	scrollbar-face-color: #47C3F6;
	scrollbar-highlight-color: #0F1D8C;
	scrollbar-shadow-color: #FFFFFF;
	scrollbar-3dlight-color: #CACFF9;
	scrollbar-arrow-color: #FFFFFF;
	scrollbar-track-color: #5460C0;
	scrollbar-darkshadow-color: #98AAB1;
}


/* General font families for common tags */
font,th,td,p { font-family: Verdana, Arial, Helvetica, sans-serif }
a:link,a:active,a:visited { color : #0F1D8C; }
a:hover	{ text-decoration: none; color : #0F1D8C; }
hr	{ height: 0px; border: solid #0F1D8C 0px; border-top-width: 1px;}


/* This is the border line & background colour round the entire page */

.bodyline{background: #0F1D8C; border: 1px solid #0F1D8C}

/* This is the outline round the main forum tables */
.forumline	{ background: #0F1D8C; border: 1px #CACFF9 solid; }


/* Main table cell colours and backgrounds */
td.row1	{ background-color: #E7E9F7; }
td.row2	{ background-color: #AADAED; }
td.row3	{ background-color: #E7E9F7; }

/*
  This is for the table cell above the Topics, Post & Last posts on the index.php page
  By default this is the fading out gradiated silver background.  However, you could replace this with a bitmap specific for each forum
*/

td.rowpic {		background-color: #CBE0F4;
		background-image: url(themes/BlueNile/forums/images/cellpic2.jpg); background-repeat: repeat-y; }

/* Header cells - the blue and silver gradient backgrounds */
th	{	color: #0F1D8C; font-size: 11px; font-weight : bold;
background-color: #47C3F6; height: 25px;
background-image: url(themes/BlueNile/forums/images/cellpic3.gif); }
td.cat,td.catHead,td.catSides,td.catLeft,td.catRight,td.catBottom {
			background-image: url(themes/BlueNile/forums/images/cellpic1.gif);
			background-color:#47C3F6; border: #D8EDEE; border-style: solid; height: 28px;
}

/* Setting additional nice inner borders for the main table cells.
  The names indicate which sides the border will be on.
  Don't worry if you don't understand this, just ignore it :-)
*/
td.cat,td.catHead,td.catBottom {
	height: 29px;
	border-width: 0px 0px 0px 0px;
}
th.thHead,th.thSides,th.thTop,th.thLeft,th.thRight,th.thBottom,th.thCornerL,th.thCornerR {
	font-weight: bold; border: #D6F6F8; border-style: solid; height: 28px; }
td.row3Right,td.spaceRow {
	background-color: #95E7EC; border: #47C3F6; border-style: solid; }

th.thHead,td.catHead { font-size: 12px; border-width: 1px 1px 0px 1px; }
th.thSides,td.catSides,td.spaceRow	 { border-width: 0px 1px 0px 1px; }
th.thRight,td.catRight,td.row3Right	 { border-width: 0px 1px 0px 0px; }
th.thLeft,td.catLeft	  { border-width: 0px 0px 0px 1px; }
th.thBottom,td.catBottom  { border-width: 0px 1px 1px 1px; }
th.thTop	 { border-width: 1px 0px 0px 0px; }
th.thCornerL { border-width: 1px 0px 0px 1px; }
th.thCornerR { border-width: 1px 1px 0px 0px; }


/* The largest text used in the index page title and toptic title etc. */
.maintitle,h1,h2	{
			font-weight: bold; font-size: 22px; font-family: "Trebuchet MS",Verdana, Arial, Helvetica, sans-serif;
			text-decoration: none; line-height : 120%; color : #0F1D8C;
}

/* General text */
.gen { font-size : 12px; }
.genmed { font-size : 11px; }
.gensmall { font-size : 10px; }
.gen,.genmed,.gensmall { color : #0F1D8C; }
a.gen,a.genmed,a.gensmall { color: #0F1D8C; text-decoration: none; }
a.gen:hover,a.genmed:hover,a.gensmall:hover	{ color: #DD6900; text-decoration: none; }

/* The register, login, search etc links at the top of the page */
.mainmenu		{ font-size : 11px; color : #0F1D8C }
a.mainmenu		{ text-decoration: none; color : #0F1D8C;  }
a.mainmenu:hover { text-decoration: none; color : #DD6900; }

/* Forum category titles */
.cattitle		{ font-weight: bold; font-size: 12px ; letter-spacing: 1px; color : #0F1D8C}
a.cattitle		{ text-decoration: none; color : #0F1D8C; }
a.cattitle:hover{ text-decoration: none; }


/* Forum title: Text and link to the forums used in: index.php */
.forumlink		{ font-weight: bold; font-size: 12px; color : #0F1D8C; }
a.forumlink 	{ text-decoration: none; color : #0F1D8C; }
a.forumlink:hover{ text-decoration: none; color : #0A82B3; }


/* Used for the navigation text, (Page 1,2,3 etc) and the navigation bar when in a forum */
.nav			{ font-weight: bold; font-size: 11px; color : #0F1D8C;}
a.nav			{ text-decoration: none; color : #47C3F6; }
a.nav:hover		{ text-decoration: none; }

/* titles for the topics: could specify viewed link colour too */

.topictitle			{ font-weight: bold; font-size: 11px; color : #0F1D8C; }
a.topictitle:link   { text-decoration: none; color : #0F1D8C; }
a.topictitle:visited { text-decoration: none; color : #47C3F6; }
a.topictitle:hover	{ text-decoration: none; color : #7C92E4; }

/* Name of poster in viewmsg.php and viewtopic.php and other places */
.name { font-size : 11px; color : #0F1D8C;}

/* Location, number of posts, post date etc */
.postdetails		{ font-size : 10px; color : #0F1D8C; }

/* The content of the posts (body of text) */
.postbody { font-size : 12px;}
a.postlink:link	{ text-decoration: none; color : #0F1D8C }
a.postlink:visited { text-decoration: none; color : #47C3F6; }
a.postlink:hover { text-decoration: none; color : #7C92E4}

/* Quote & Code blocks */
.code {
	font-family: Courier, 'Courier New', sans-serif; font-size: 11px; color: #0624BA;
	background-color: #C2F0F6; border: #0F1D8CF; border-style: solid;
	border-left-width: 1px; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px
}
.quote {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: #0F1D8C; line-height: 125%;
	background-color: #C2F0F6; border: #0F1D8CF; border-style: solid;
	border-left-width: 1px; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px
}


/* Copyright and bottom info */
.copyright		{ font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; color: #0F1D8C; letter-spacing: -1px;}
a.copyright		{ color: #0F1D8C; text-decoration: none;}
a.copyright:hover { color: #47C3F6; text-decoration: none;}
/* Form elements */
input,textarea {
	color : #4760F6;	font: normal 11px Verdana, Arial, Helvetica, sans-serif;
	border-color : #B7E3F5;
	background-color : #F2F2F2;
} select {
	color : #0F1D8C;
	font: normal 11px Verdana, Arial, Helvetica, sans-serif;
	border-color : #47C3F6
	}

/* The text input fields background colour */
input.post, textarea.post, select {
	background-color : #D2ECF6;
}  input { text-indent : 2px; }

/* The buttons used for bbCode styling in message post */
input.button {

	color : #1A49A9;
	font-size: 11px; font-family: Verdana, Arial, Helvetica, sans-serif;
}
/* The main submit button option */
input.mainoption {

	font-weight : bold;
}

/* None-bold submit button */
input.liteoption {
	background-color : #FFFFFF;
	font-weight : normal;
}
/* This is the line in the posting page which shows the rollover
  help line. This is actually a text box, but if set to be the same
  colour as the background no one will know ;)
*/
.helpline { background-color: #FFFFFF; border-style: none; }


/* Import the fancy styles for IE only (NS4.x doesn't use the @import function) */
@import url("formIE.css"); 
-->
</style>
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
</head>
<body background="themes/BlueNile/forums/images/bac.jpg">
<table width="100%" border="0" cellspacing="0" cellpadding="6"> 
  <tr> 
    <td>
<table width="100%" cellspacing="0" cellpadding="0" border="0"> 
	<tr> 
		<td align="center" valign="top">
<table width="100%" cellspacing="0" cellpadding="0" border="0">
      <tr> 
				
        <td align="center" width="100%"><br />
&nbsp;
<table cellspacing="0" cellpadding="2" border="0">
            <tr> 
						<td align="center" valign="top" nowrap="nowrap"><span class="mainmenu">&nbsp;<a href="{U_FAQ}" class="mainmenu"><img src="themes/BlueNile/forums/images/icon_mini_faq.gif" border="0" alt="{L_FAQ}" hspace="3" />{L_FAQ}</a></span><span class="mainmenu">&nbsp; &nbsp;<a href="{U_SEARCH}" class="mainmenu"><img src="themes/BlueNile/forums/images/icon_mini_search.gif"  border="0" alt="{L_SEARCH}" hspace="3" />{L_SEARCH}</a>&nbsp; &nbsp;<a href="{U_MEMBERLIST}" class="mainmenu"><img src="themes/BlueNile/forums/images/icon_mini_members.gif"  border="0" alt="{L_MEMBERLIST}" hspace="3" />{L_MEMBERLIST}</a>&nbsp; &nbsp;<a href="{U_GROUP_CP}" class="mainmenu"><img src="themes/BlueNile/forums/images/icon_mini_groups.gif"  border="0" alt="{L_USERGROUPS}" hspace="3" />{L_USERGROUPS}</a>&nbsp; 
						<!-- BEGIN switch_user_logged_out -->
						&nbsp;</span>&nbsp;
						<!-- END switch_user_logged_out -->
						</td>
					</tr>
					<tr>
						<td height="25" align="center" valign="top" nowrap="nowrap"><span class="mainmenu">&nbsp;<a href="{U_PROFILE}" class="mainmenu"><img src="themes/BlueNile/forums/images/icon_mini_profile.gif"  border="0" alt="{L_PROFILE}" hspace="3" />{L_PROFILE}</a>&nbsp; &nbsp;<a href="{U_PRIVATEMSGS}" class="mainmenu"><img src="themes/BlueNile/forums/images/icon_mini_message.gif"  border="0" alt="{PRIVATE_MESSAGE_INFO}" hspace="3" />{PRIVATE_MESSAGE_INFO}</a>&nbsp;</span></td>
					</td>
			</tr>
		</table>
					</td>
			</tr>
		</table>
							</td>
			</tr>
		</table>
							</td>
			</tr>
		</table>
		<br />
