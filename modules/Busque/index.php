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
echo "<p align=center>.-Resultados Encontrados-.</p><br><br>";
$lin=ConectaArbo();
//echo "hola:".substr($_GET[T1],1,1);
//echo $_GET[T2];
switch ($_GET[T1])
	{
		case "T":
			$bus="%$_GET[Busq]%";
			break;
		case "I":
			$bus=$_GET[Busq]."%";
			break;
		case "F":
			$bus="%".$_GET[Busq];
			break;
	}

$sql=mysql_query("select * from nuke_empresa where Descripcion like '".$bus."' or Nombre like '".$bus."'",$lin);
while($rs=mysql_fetch_array($sql))
{
	echo "$rs[Nombre]<br>$rs[Descripcion].";
	$sql2=mysql_query("select * from nuke_telefonos where IDEmpresa=$rs[ID]",$lin);
	while($rs2=mysql_fetch_array($sql2))
	{
		echo " $rs2[Tipo]: $rs2[Telefono]";
	}
echo "<br><br>";
}
CloseTable();
//mysql_free_result($res);
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