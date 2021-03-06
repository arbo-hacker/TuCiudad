<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="{S_CONTENT_DIRECTION}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={S_CONTENT_ENCODING}">
<meta http-equiv="Content-Style-Type" content="text/css">
{META}
{NAV_LINKS}
<title>{SITENAME} :: {PAGE_TITLE}</title>
<!-- link rel="stylesheet" href="themes/XetaTheme/forums/forums.css" type="text/css" -->
<style type="text/css">
<!--
/*
  The original XetaTheme Theme for phpBB version 2+
  Created by Wabisurf
  http://www.wabisurf.net
traducido y adaptado por Drag�n
http://nukebazar.com
*/
body { 
	background-color:#2E2E2E;
	scrollbar-face-color: #3F5569;
	scrollbar-highlight-color: #59748D;
	scrollbar-shadow-color: {T_TR_COLOR2};
	scrollbar-3dlight-color: {T_TR_COLOR3};
	scrollbar-arrow-color:  #FFFFFF;
	scrollbar-track-color: #59748D;
	scrollbar-darkshadow-color: {T_TH_COLOR1};
}

font,th,td,p { font-family: {T_FONTFACE1} }
a:link,a:active,a:visited { text-decoration: underline;color : {T_BODY_LINK}; }
a:hover		{ text-decoration: underline; color : {T_BODY_HLINK}; }
hr	{ height: 0px; border: solid #E8E6E6 0px; border-top-width: 1px;}

.bodyline	{ background-color: #31404E; border: 1px #D1D7DC solid; }
.forumline	{ background-color: #31404E; border: 1px #D1D7DC solid; }

td.row1	{ background-color: #59748D; }
td.row2	{ background-color: #3F5569; }
td.row3	{ background-color: #59748D; }

td.rowpic {
		background-color: #3F5569;
		background-image: url(themes/XetaTheme/forums/images/barpic2.gif);
		background-repeat: repeat-y;
}

th	{
	color: #FFFFFF; font-size: {T_FONTSIZE2}px; font-weight : bold; 
	background-color: #3F5468; height: 25px;
	background-image: url(themes/XetaTheme/forums/images/barpic3.gif);
}

td.cat,td.catHead,td.catSides,td.catLeft,td.catRight,td.catBottom {
			background-image: url(themes/XetaTheme/forums/images/barpic1.gif);
			background-color: #59748D; border: #3C5063; border-style: solid; height: 28px;
}

td.cat,td.catHead,td.catBottom {
	height: 29px;
	border-width: 0px 0px 0px 0px;
}
th.thHead,th.thSides,th.thTop,th.thLeft,th.thRight,th.thBottom,th.thCornerL,th.thCornerR {
	font-weight: bold; border: #3C5063; border-style: solid; height: 28px;
}
td.row3Right,td.spaceRow {
	background-color: #59748D; border: #6786A3; border-style: solid;
}

th.thHead,td.catHead { font-size: {T_FONTSIZE3}px; border-width: 1px 1px 0px 1px; }
th.thSides,td.catSides,td.spaceRow	 { border-width: 0px 1px 0px 1px; }
th.thRight,td.catRight,td.row3Right	 { border-width: 0px 1px 0px 0px; }
th.thLeft,td.catLeft	  { border-width: 0px 0px 0px 1px; }
th.thBottom,td.catBottom  { border-width: 0px 1px 1px 1px; }
th.thTop	 { border-width: 1px 0px 0px 0px; }
th.thCornerL { border-width: 1px 0px 0px 1px; }
th.thCornerR { border-width: 1px 1px 0px 0px; }

.maintitle	{
	font-weight: bold; font-size: 22px; font-family: "{T_FONTFACE2}",{T_FONTFACE1};
	text-decoration: none; line-height : 120%; color : {T_BODY_TEXT};
}

.gen { font-size : {T_FONTSIZE3}px; }
.genmed { font-size : {T_FONTSIZE2}px; }
.gensmall { font-size : {T_FONTSIZE1}px; }
.gen,.genmed,.gensmall { color : {T_BODY_TEXT}; }
a.gen,a.genmed,a.gensmall { color: {T_BODY_LINK}; text-decoration: underline; }
a.gen:hover,a.genmed:hover,a.gensmall:hover	{ color: {T_BODY_HLINK}; text-decoration: underline; }

.mainmenu		{ font-size : {T_FONTSIZE2}px; color : {T_BODY_TEXT} }
a.mainmenu		{ text-decoration: underline; color : {T_BODY_LINK};  }
a.mainmenu:hover{ text-decoration: underline; color : {T_BODY_HLINK}; }

.cattitle		{ font-weight: bold; font-size: {T_FONTSIZE3}px ; letter-spacing: 1px; color : {T_BODY_LINK}}
a.cattitle		{ text-decoration: underline; color : {T_BODY_LINK}; }
a.cattitle:hover{ text-decoration: underline; }

.forumlink		{ font-weight: bold; font-size: {T_FONTSIZE3}px; color : {T_BODY_LINK}; }
a.forumlink 	{ text-decoration: underline; color : {T_BODY_LINK}; }
a.forumlink:hover{ text-decoration: underline; color : {T_BODY_HLINK}; }

.nav			{ font-weight: bold; font-size: {T_FONTSIZE2}px; color : {T_BODY_TEXT};}
a.nav			{ text-decoration: underline; color : {T_BODY_LINK}; }
a.nav:hover		{ text-decoration: underline; }

.topictitle,h1,h2	{ font-weight: bold; font-size: {T_FONTSIZE2}px; color : {T_BODY_TEXT}; }
a.topictitle:link   { text-decoration: underline; color : {T_BODY_LINK}; }
a.topictitle:visited { text-decoration: underline; color : {T_BODY_VLINK}; }
a.topictitle:hover	{ text-decoration: underline; color : {T_BODY_HLINK}; }

.name			{ font-size : {T_FONTSIZE2}px; color : {T_BODY_TEXT};}
.postdetails		{ font-size : {T_FONTSIZE1}px; color : {T_BODY_TEXT}; }

.postbody { font-size : {T_FONTSIZE3}px; line-height: 18px}
a.postlink:link	{ text-decoration: underline; color : {T_BODY_LINK} }
a.postlink:visited { text-decoration: underline; color : {T_BODY_VLINK}; }
a.postlink:hover { text-decoration: underline; color : {T_BODY_HLINK}}

.code { 
	font-family: {T_FONTFACE3}; font-size: {T_FONTSIZE2}px; color: #FFFFFF;
	background-color: #6E8FAE; border: #000000; border-style: solid;
	border-left-width: 1px; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px
}

.quote {
	font-family: {T_FONTFACE1}; font-size: {T_FONTSIZE2}px; color: #FFFFFF; line-height: 125%;
	background-color: #6E8FAE; border: #000000; border-style: solid;
	border-left-width: 1px; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px
}

.copyright		{ font-size: {T_FONTSIZE1}px; font-family: {T_FONTFACE1}; color: #FFFFFF; letter-spacing: -1px;}
a.copyright		{ color: {T_FONTCOLOR1}; text-decoration: underline;}
a.copyright:hover { color: {T_BODY_TEXT}; text-decoration: underline;}

input,textarea, select {
	color : #000000;
	font: normal {T_FONTSIZE2}px {T_FONTFACE1};
	border-color : #000000;
}

input.post, textarea.post, select {
	background-color : #6B8EAD;
}

input { text-indent : 2px; }

input.button {
	background-color : #6B8EAD;
	color : {T_BODY_TEXT};
	font-size: {T_FONTSIZE2}px; font-family: {T_FONTFACE1};
}

input.mainoption {
	background-color : #FFFFFF;
	font-weight : bold;
}

input.liteoption {
	background-color : #FFFFFF;
	font-weight : normal;
}

.helpline { background-color: #6B8EAD; border-style: none; }

/* Import the fancy styles for IE only (NS4.x doesn't use the @import function) */
@import url("themes/XetaTheme/forums/formIE.css"); 
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
</head><br>
<body bgcolor="{T_BODY_BGCOLOR}" text="{T_BODY_TEXT}" link="{T_BODY_LINK}" vlink="{T_BODY_VLINK}">

<a name="top"></a>

<table width="100%" border="0" cellspacing="0" cellpadding="6">
  <tr>
    <td>
<table class="forumline" align="center" width="80%" cellspacing="1" cellpadding="3" border="0">
  <tr> 
    <th class="thHead" height="25" valign="middle"><span class="tableTitle"><font color="445B70">- </font> 
      {SITENAME}<font color="445B70"> -</font></span></th>
  </tr>
  <tr> 
    <td class="row1" align="center"> 
      <table width="100%" cellspacing="0" cellpadding="0" border="0">
        <tr> 
          <td height="50"></td>
		  <td><a href="{U_INDEX}"><img src="themes/XetaTheme/forums/images/logo.gif" border="0" alt="{L_INDEX}" vspace="1" /></a></td>
          <td align="center" width="100%" valign="middle"><span class="gen">&nbsp; 
            </span> 
            <table cellspacing="0" cellpadding="2" border="0">
              <tr> 
                <td align="center" valign="top" nowrap><span class="mainmenu">

                </td>
              </tr>
            </table>
	    <table cellspacing="0" cellpadding="2" border="0">
              <tr> 
                <td align="center" valign="top" nowrap><span class="mainmenu">&nbsp;<a href="{U_FAQ}" class="mainmenu"><img src="themes/XetaTheme/forums/images/icon_mini_faq.gif" width="12" height="13" border="0" alt="{L_FAQ}" hspace="3" />{L_FAQ}</a></span><span class="mainmenu">&nbsp; 
                  &nbsp;<a href="{U_SEARCH}" class="mainmenu"><img src="themes/XetaTheme/forums/images/icon_mini_search.gif" width="12" height="13" border="0" alt="{L_SEARCH}" hspace="3" />{L_SEARCH}</a>&nbsp; 
                  &nbsp;<a href="{U_PROFILE}" class="mainmenu"><img src="themes/XetaTheme/forums/images/icon_mini_profile.gif" width="12" height="13" border="0" alt="{L_PROFILE}" hspace="3" />{L_PROFILE}</a>&nbsp;
                  &nbsp;<a href="{U_GROUP_CP}" class="mainmenu"><img src="themes/XetaTheme/forums/images/icon_mini_groups.gif" width="12" height="13" border="0" alt="{L_USERGROUPS}" hspace="3" />{L_USERGROUPS}</a></span>&nbsp;
                  &nbsp;<a href="{U_LOGIN_LOGOUT}"><img src="themes/XetaTheme/forums/images/icon_mini_login.gif" width="13" height="13" border="0" alt="{L_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" hspace="3" align="top" />{L_LOGIN_LOGOUT}</a>&nbsp;
                </td>
              </tr>
              <tr> 
                <td height="25" align="center" valign="top" nowrap> 
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
   <tr>
    <th class="thHead" height="25" valign="middle"><span class="gen"><font color="445B70">-</font> 
      {SITE_DESCRIPTION} <font color="445B70">-</font></span></th>
  </tr>
</table>
          </td>
        </tr>
      </table>
