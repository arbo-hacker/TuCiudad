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
$subject = "$sitename "._Busqueda."";
/**********************************/

include("header.php");
//include("cate.php");

OpenTable();
echo "<p align=center>.-Busqueda-.</p>";

//Original
/*echo "<br>
<p align=left>
	<form method=GET action=modules.php>
		Búsqueda
		<input type=hidden name=name value=Busque>
		<input type=text name=Busq size=20>
		<br>
		<br>
		
		<input type=radio name=T1 value=T checked>Todos los que contengan la palabra<br>
		<input type=radio name=T1 value=I>Los que comiencen con la palabra<br>
		<input type=radio name=T1 value=F>Los que terminen en la palabra<br>
	</form>
</p>
";*/
//Original


echo "<br>
<p align=left>
	<form method=GET action=modules.php>
		Búsqueda
		<input type=hidden name=name value=PreVenta>
		<input type=text name=Busq size=20>
		<br>
		<br>
		
		<input type=radio name=T1 value=T checked>Todos los que contengan la palabra<br>
		<input type=radio name=T1 value=I>Los que comiencen con la palabra<br>
		<input type=radio name=T1 value=F>Los que terminen en la palabra<br>
	</form>
</p>
";


CloseTable();
//mysql_free_result($res);
include("footer.php");

function ConectaArbo()
{
   if (!($link=mysql_connect("localhost","ga000624_luis","auto")))
   {
      echo "Error conectando a la base de datos.";
      exit();
   }
   if (!mysql_select_db("ga000624_auto",$link))
   {
      echo "Error seleccionando la base de datos.";
      exit();
   }
   return $link;
}
?>