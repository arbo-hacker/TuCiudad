<!-- DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" -->
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="{S_CONTENT_DIRECTION}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={S_CONTENT_ENCODING}"  />
<meta http-equiv="Content-Style-Type" content="text/css" />
{META}
<title>{SITENAME} :: {PAGE_TITLE}</title>
<!-- link rel="stylesheet" href="themes/BlueNile/forums/forums.css" type="text/css" -->
<style type="text/css">
<!--

/*
  The original BlueNile Theme for phpBB version 6+  Created by TagCraig
  http://www.juzt4boyz.net
*/


 /* General page style. The scroll bar colours only visible in IE5.5+ */
body {
	background-color: #E7E9F7;
        scrollbar-face-color: #47C3F6;
	scrollbar-highlight-color: #0F1D8C;
	scrollbar-shadow-color: #FFFFFF;
	scrollbar-3dlight-color: #CACFF9;
	scrollbar-arrow-color: #FFFFFF;
	scrollbar-track-color: #0F1D8C;
	scrollbar-darkshadow-color: 5460C0;}
	



/* General font families for common tags */ 
font,th,td,p { font-family: Verdana, Arial, Helvetica, sans-serif } a:link,a:active,a:visited { color : #000000; }
a:hover	{ text-decoration: underline; color : #DD6900; }
hr	{ height: 0px; border: solid #99DCF7 0px; border-top-width: 1px;}


/* This is the border line & background colour round the entire page */
.bodyline{background: #D0EBF6; border: 1px solid #0036FF}
/* This is the outline round the main forum tables */
.forumline	{ background: #ABE1F7; border: 1px #01A0E2 solid; }


/* Main table cell colours and backgrounds */
td.row1	{ background-color: #E2F2FA; }
td.row2	{ background-color: #BDE6F9; }
td.row3	{ background-color: #E2F2FA; }


/*  This is for the table cell above the Topics, Post & Last posts on the index.php page
  By default this is the fading out gradiated silver background.
  However, you could replace this with a bitmap specific for each forum
*/
td.rowpic {
		background-color: #E2F2FA;
		background-image: url(themes/BlueNile/forums/images/cellpic2.jpg);
		background-repeat: repeat-y;
}

/* Header cells - the blue and silver gradient backgrounds */
th	{
	color: #0F1D8C; font-size: 11px; font-weight : bold;
	background-color: #47C3F6; height: 25px;
	background-image: url(themes/BlueNile/forums/images/cellpic3.gif);
}

td.cat,td.catHead,td.catSides,td.catLeft,td.catRight,td.catBottom {
			background-image: url(themes/BlueNile/forums/images/cellpic1.gif);
			background-color:#CFEBF4; border: #0F1D8C; border-style: solid; height: 28px;
}


/*
  Setting additional nice inner borders for the main table cells.
  The names indicate which sides the border will be on.
  Don't worry if you don't understand this, just ignore it :-)
*/
td.cat,td.catHead,td.catBottom {
	height: 29px;
	border-width: 0px 0px 0px 0px;
}
th.thHead,th.thSides,th.thTop,th.thLeft,th.thRight,th.thBottom,th.thCornerL,th.thCornerR {
	font-weight: bold; border: #47C3F6; border-style: solid; height: 28px; }
td.row3Right,td.spaceRow {
	background-color: #CEEBF7; border: #47C3F6; border-style: solid; }

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
a.gen:hover,a.genmed:hover,a.gensmall:hover	{ color: #BDE7F8; text-decoration: underline; }

/* The register, login, search etc links at the top of the page */
.mainmenu		{ font-size : 11px; color : #000000 }
a.mainmenu		{ text-decoration: none; color : #000000;  }
a.mainmenu:hover{ text-decoration: underline; color : #DD6900; }


/* Forum category titles */
.cattitle		{ font-weight: bold; font-size: 12px ; letter-spacing: 1px; color : #000000}
a.cattitle		{ text-decoration: none; color : #000000; }
a.cattitle:hover{ text-decoration: underline; }


/* Forum title: Text and link to the forums used in: index.php */
.forumlink		{ font-weight: bold; font-size: 12px; color : #000000; }
a.forumlink 	{ text-decoration: none; color : #000000; }
a.forumlink:hover{ text-decoration: underline; color : #DD6900; }


/* Used for the navigation text, (Page 1,2,3 etc) and the navigation bar when in a forum */
.nav			{ font-weight: bold; font-size: 11px; color : #000000;}
a.nav			{ text-decoration: none; color : #000000; }
a.nav:hover		{ text-decoration: underline; }


/* titles for the topics: could specify viewed link colour too */
.topictitle			{ font-weight: bold; font-size: 11px; color : #000000; }
a.topictitle:link   { text-decoration: none; color : #000000; }
a.topictitle:visited { text-decoration: none; color : #5493B4; }
a.topictitle:hover	{ text-decoration: underline; color : #DD6900; }
/* Name of poster in viewmsg.php and viewtopic.php and other places */
.name			{ font-size : 11px; color : #000000;}
/* Location, number of posts, post date etc */
.postdetails		{ font-size : 10px; color : #000000; }
/* The content of the posts (body of text) */
.postbody { font-size : 12px;}
a.postlink:link	{ text-decoration: none; color : #000000 }
a.postlink:visited { text-decoration: none; color : #5493B4; }
a.postlink:hover { text-decoration: underline; color : #DD6900}
/* Quote & Code blocks */
.code {
	font-family: Courier, 'Courier New', sans-serif; font-size: 11px; color: #012A88;
	background-color: #D6F3FA; border: #012A88; border-style: solid;
	border-left-width: 1px; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px
}

.quote {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: #012A88; line-height: 125%;
	background-color: #D6F3FA; border: #012A88; border-style: solid;
	border-left-width: 1px; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px
}


/* Copyright and bottom info */
.copyright		{ font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; color: #D6F3FA; letter-spacing: -1px;}
a.copyright		{ color: #D6F3FA; text-decoration: none;}
a.copyright:hover { color: #000000; text-decoration: underline;}


/* Form elements */
input,textarea {
	color : #000000;
	font: normal 11px Verdana, Arial, Helvetica, sans-serif;
	border-color : #D2A900;
	background-color : #F4EEE3;
}
select {
	color : #000000;
	font: normal 11px Verdana, Arial, Helvetica, sans-serif;
	border-color : #D2A900
	}
 
/* The text input fields background colour */
input.post, textarea.post, select {
	background-color : #F4EEE3;
}

input { text-indent : 2px; }

/* The buttons used for bbCode styling in message post */
input.button {

	color : #000000;
	font-size: 11px; font-family: Verdana, Arial, Helvetica, sans-serif;
}

/* The main submit button option */
input.mainoption {

	font-weight : bold;
}

/* None-bold submit button */
input.liteoption {
	background-color : #D7E9F7;
	font-weight : normal;
}

/* This is the line in the posting page which shows the rollover
  help line. This is actually a text box, but if set to be the same
  colour as the background no one will know ;)
*/
.helpline { background-color: #47C3F6; border-style: none; }


/* Import the fancy styles for IE only (NS4.x doesn't use the @import function) */
@import url("formIE.css"); 
-->
</style>
</head>

<body bgcolor="{T_BODY_BGCOLOR}" text="{T_BODY_TEXT}" link="{T_BODY_LINK}" vlink="{T_BODY_VLINK}">
<span class="gen"><a name="top"></a></span>
