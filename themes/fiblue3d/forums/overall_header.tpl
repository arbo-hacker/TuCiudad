<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="{S_CONTENT_DIRECTION}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={S_CONTENT_ENCODING}">
<meta http-equiv="Content-Style-Type" content="text/css">
{META}
{NAV_LINKS}
<title>{SITENAME} :: {PAGE_TITLE}</title>
<!-- link rel="stylesheet" href="themes/fiblack3d/forums/forums.css" type="text/css" -->
<style type="text/css">
<!--
/* Based on the original Style Sheet for the fisubsilver v2 Theme for phpBB version 2+
Edited by Daz  - http://www.forumimages.com - last updated 13-03-03 */

/* The content of the posts (body of text) */
body{background:#002c42;color:#e7e7e7;font:12px Verdana,Arial,Helvetica,sans-serif;margin:8px;padding:0;
scrollbar-3dlight-color:#006091;
scrollbar-arrow-color:#ff8c00;
scrollbar-darkshadow-color:#000000;
scrollbar-face-color:#002c42;
scrollbar-highlight-color: #002c42;
scrollbar-shadow-color:#000000;
scrollbar-track-color:#002c42}

/* General font families for common tags */
th,td,p{font:12px Verdana,Arial,Helvetica,sans-serif}
p{margin-top:2px;margin-bottom:3px}

/* General text */
.gensmall{font-size:10px}
td.genmed,.genmed{font-size:11px}
.explaintitle{font-size:11px;font-weight:bold;color:#006699}

/* General page style */
a:link,a:active,a:visited,a.postlink{color:#ff8c00;text-decoration:none}
a:hover{color:#0077b5}

/* titles for the topics:could specify viewed link colour too */
.topictitle{font-size:11px;font-weight:bold}
a.topictitle:visited{color:#ce7200}
a.topictitle:hover{color:#0077b5}

/* Name of poster in viewmsg.php and viewtopic.php and other places */
.name{font-size:11px;font-weight: bold}

hr{border: 0px solid #000000;border-top-width:1px;height:0px}

/* Category gradients*/
td.cat{color:#006699;font-weight:bold;letter-spacing:1px;background:#00344f;height:31px;text-indent:4px}
a.cattitle,a.cattitle:visited{color:#006699}
a.cattitle:hover{color:#ff8c00}

/* Main table cell colours and backgrounds */
.row1,.row2,.row3,td.rowpic{background:#003e5e}

.row1,.row2,.row3,td.rowpic,td.cat,td.spacerow,th{
border:1px solid; border-color:#006091 #000000 #000000 #006091}

td.spacerow{background:#00344f}

/* Table Header cells */
th{background:#00344f;color:#006699;font-size:11px;
font-weight:bold;height:27px;white-space:nowrap;text-align:center;padding-left:8px;padding-right:8px}

/* This is the border line & background colour round the entire page */
.bodyline{background:#003e5e url(themes/fiblue3d/forums/images/cb_fbr_tex.gif)}

/* This is the outline round the main forum tables */
.forumline{background:#002c42}

.bodyline{border:1px solid;border-color: #000000 #006091 #006091 #000000}
.forumline,iframe{border:1px solid;border-color: #006091 #006091 #006091 #006091}

/* The largest text used in the index page title and toptic title etc. */
.maintitle,h1{
font:bold 20px/120% "Trebuchet MS",Verdana,Arial,Helvetica,sans-serif;text-decoration:none;color:#767676}

.subtitle,h2{font:bold 18px/180% "Trebuchet MS",Verdana,Arial,Helvetica,sans-serif;
text-decoration:none}

/* Used for the navigation text,(Page 1,2,3 etc) and the navigation bar when in a forum */
.nav{font-size:11px;font-weight:bold;color:#979797}
.postbody{font-size:12px;line-height:125%}

/* Location,number of posts,post date etc */
.postdetails{font-size:10px;color:#8a8a8a}

/* Quote blocks */
.quote{background:#525252;border:1px solid #000000;color:#e7e7e7;
font-size:11px;line-height:125%}

/* Code blocks */
.code{background:#545454;border:1px solid #000000;color:#fff8dc;
font:12px Courier,"Courier New",sans-serif;padding:5px}

/* This is for the error messages that pop up */
.errorline{background:#ff8c00;border:1px solid #000000}

/* Form elements */
form{display:inline}

input{font:11px Verdana,Arial,Helvetica,sans-serif;color:#e7e7e7}

select{background:#003e5e;color:#e7e7e7;font:11px Verdana,Arial,Helvetica,sans-serif}

input.post,textarea.post{background:#003e5e;color:#e7e7e7;
font:11px Verdana,Arial,Helvetica,sans-serif;padding-bottom:2px;padding-left:2px;
border:1px solid;border-color: #000000 #006091 #006091 #000000}

input.button,input.liteoption,.fakebut{background:#003e5e;font-size:11px;color:#e7e7e7;
border:1px solid; border-color:#006091 #000000 #000000 #006091}
input.mainoption{background:#003e5e;color:#ff8c00;font-size:11px;font-weight: bold;
border:1px solid; border-color:#006091 #000000 #000000 #006091}
input.catbutton{background:#003e5e;font-size:11px;
border:1px solid; border-color:#006091 #000000 #000000 #006091}

a.but,a.but:hover,a.but:visited{color:#ff8c00;text-decoration:none}

/* This is the line in the posting page which shows the rollover
help line. Colour value in row2 */
.helpline{background:#003e5e;border-style:none}

/* This is the gradient background at the top of the page */
.topbkg{background: #003e5e url(themes/fiblue3d/forums/images/cellpic_bkg.jpg) repeat-x;height:120px; font-size:13px;
line-height: 140%;font-weight:bold;color:#000000}
.headtitle{font:bold 28px/180% "Trebuchet MS",Verdana,Arial,Helvetica,sans-serif;color: #262626}

.topnav{font-size:10px;background:#002c42;color:#006091;height:23px;white-space:nowrap;
border:1px solid; border-color:#006091 #000000 #000000 #006091}

/* Admin & Moderator Colours MODification */
.admin,.mod{font-size:11px;font-weight:bold}
.admin,a.admin,a.admin:visited{color:#ffa34f}
.mod,a.mod,a.mod:visited{color:#e0e100}
a.admin:hover,a.mod:hover{color:#6ccfff}

/* Specify the space around images */
.imgtopic,.imgicon{margin-left:0}
.imgspace{margin-left:1px;margin-right:2px}
.imgfolder{margin:1px;margin-left:4px;margin-right:4px}

/* Gets rid of the need for border="0" on hyperlinked images */
img{border:0}

/* Background images for tables */
.tbltop{background:#003e5e url(themes/fiblue3d/forums/images/tnav_t.gif) repeat-x}
.tblleft{background:#003e5e url(themes/fiblue3d/forums/images/tnav_l.gif) repeat-y}
.tblright{background:#003e5e url(themes/fiblue3d/forums/images/tnav_r.gif) repeat-y}
.tblbot{background:#003e5e url(themes/fiblue3d/forums/images/tnav_b.gif) repeat-x}
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
<body bgcolor="{T_BODY_BGCOLOR}" text="{T_BODY_TEXT}" link="{T_BODY_LINK}" vlink="{T_BODY_VLINK}">

<a name="top"></a>

<table class="bodyline" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
  <td align="center" valign="top"> 
    <table width="100%" border="0" cellspacing="0" cellpadding="2">
<tr> 
<td align="center" class="topnav">&nbsp;<a href="{U_FAQ}">{L_FAQ}</a>&nbsp; &#8226;&nbsp; <a href="{U_SEARCH}">{L_SEARCH}</a>
&nbsp;&#8226; &nbsp;<a href="{U_MEMBERLIST}">{L_MEMBERLIST}</a>&nbsp; &#8226; 
&nbsp;<a href="{U_GROUP_CP}">{L_USERGROUPS}</a>
<!-- BEGIN switch_user_logged_out -->
&nbsp; &#8226; &nbsp;<a href="{U_REGISTER}">{L_REGISTER}</a>
<!-- END switch_user_logged_out -->
&nbsp;&#8226; &nbsp;<a href="{U_PROFILE}">{L_PROFILE}</a>&nbsp; &#8226; &nbsp;<a href="{U_PRIVATEMSGS}">{PRIVATE_MESSAGE_INFO}</a>&nbsp; 
&#8226; &nbsp;<a href="{U_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a></td>
</tr>
</table></td>
			</tr>
		</table>

		<br />
