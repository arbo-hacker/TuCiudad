<?php

/************************************************************************/
/* PHP-NUKE: Web Portal System                                          */
/* ===========================                                          */
/*                                                                      */
/* Copyright (c) 2002 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* Based on php Addon Feedback 1.0                                      */
/* Copyright (c) 2001 by Jack Kozbial                                   */
/* http://www.InternetIntl.com                                          */
/* jack@internetintl.com                                                */
/*                                                                      */
/* This program is free software. You can redistribute it and/or modify */
/* it under the terms of the GNU General Public License as published by */
/* the Free Software Foundation; either version 2 of the License.       */
/************************************************************************/
/*         Additional security & Abstraction layer conversion           */
/*                           2003 chatserv                              */
/*      http://www.nukefixes.com -- http://www.nukeresources.com        */
/************************************************************************/

if (!eregi("modules.php", $_SERVER['SCRIPT_NAME'])) {
    die ("You can't access this file directly...");
}

require_once("mainfile.php");
$module_name = basename(dirname(__FILE__));
get_lang($module_name);

/**********************************/
/* Configuration                  */
/*                                */
/* You can change this:           */
/* $index = 0; (right side off)   */
/**********************************/
$index = 1;
$subject = "$sitename "._Categorias."";
/**********************************/

include("header.php");
//include("cate.php");

OpenTable();

		echo "<h3><p align=center><b><font size=6>Categorias</font></b></p></h3>";
OpenTable();


$lin=ConectaArbo();
$res=mysql_query("select * from nuke_cate",$lin); /*Cadena para recuperar las categorias*/
//echo "hola";
$conta=0;
echo "<p align=center>";
while($row = mysql_fetch_array($res))
{
	$conta+=1;
	echo  "<a href=/tumundoautomotriz/modules.php?name=Cate&nombre=$row[Id]&cpinf=$row[Descri]><img border='1' src='$row[Imagen]' width=251 height=109></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;";
	if($conta==3)
	{
		echo "<br>";
		$conta=0;
	}
}
echo "</p>";
//echo "chao";

CloseTable();  
CloseTable();
mysql_free_result($res);
include("footer.php");

function ConectaArbo()
{
   if (!($link=mysql_connect("localhost","root","")))
   {
      echo "Error conectando a la base de datos.";
      exit();
   }
   if (!mysql_select_db("tuciudad",$link))
   {
      echo "Error seleccionando la base de datos.";
      exit();
   }
   return $link;
}
?>