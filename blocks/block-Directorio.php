<?php

/************************************************************************/
/* PHP-NUKE: Web Portal System                                          */
/* ===========================                                          */
/*                                                                      */
/* Copyright (c) 2002 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* This program is free software. You can redistribute it and/or modify */
/* it under the terms of the GNU General Public License as published by */
/* the Free Software Foundation; either version 2 of the License.       */
/************************************************************************/

if (eregi("block-Directorio.php",$_SERVER['SCRIPT_NAME'])) {
    Header("Location: index.php");
    die();
}
include("Cate.php");

$link=Conecta();

$result=mysql_query("select * from nuke_cate order by Descri",$link); /*Cadena para recuperar las categorias*/


$content= "<ul>";
while($row = mysql_fetch_array($result))
	{
		$content = $content."
				<li>
				<font class=content>
				<a href=/tuciudad/modules.php?name=Guia&nombre=$row[Id]&cpinf=$row[Descri]>$row[Descri]</a></font>
				</li>			
		";
/*		$content = $content."
				<li>
				<p align=left><font class=content>
				<a href=/tumundoautomotriz/modules.php?name=Cate&nombre=$row[Id]&cpinf=$row[Descri]>$row[Descri]</a></font>
				</li>			
		";
*/		
	}
$content=$content."</ul>";
				
mysql_free_result($result);
mysql_close($link); //cierra la conexion

?>