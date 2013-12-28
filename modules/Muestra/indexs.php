
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
$subject = "$sitename "._Muestra."";
/**********************************/

include("header.php");
//include("cate.php");

$lin=ConectaArbo();

OpenTable();

$sql=mysql_query("select * from nuke_empresa where ID=$_GET[empre]",$lin); /*Cadena para recuperar las categorias*/
$rs=mysql_fetch_array($sql);
$sql3=mysql_query("select * from nuke_fotos where IDEmpresa=$_GET[empre] and Principal=1",$lin);
$rs3=mysql_fetch_array($sql3);
echo "<br><h3><p align=center><b><font size=6>$rs[Nombre]</font></b><br><br><img border=0 src='$rs3[Foto]'></p></h3>";



OpenTable();



$res=mysql_query("select * from nuke_empresa where ID=$_GET[empre]",$lin); /*Cadena para recuperar las categorias*/
//echo "hola";
$conta=0;
echo "<p align=center>";
while($row = mysql_fetch_array($res))
{
	echo "
		<table height=246 cellSpacing=0 cellPadding=3 width=100% border=0 id=table1>
			<tr height=23>
				<td class=content-blk vAlign=top width=24%><b>Descripción de la 
				Empresa</b></td>
				<td class=content-blk vAlign=top width=2%>:</td>
				<td class=content-blk vAlign=top width=74%>$row[Descripcion]<br>
		&nbsp;</td>
			</tr>
			<tr height=6>
				<td colSpan=3>&nbsp;</td>
			</tr>
			<tr height=23>
				<td class=content-blk vAlign=top width=24%><b>Dirección</b></td>
				<td class=content-blk vAlign=top width=2%>:</td>
				<td class=content-blk vAlign=top width=74%>$row[Direccion]<br>
		&nbsp;</td>
			</tr>";
			$res2=mysql_query("select * from nuke_telefonos where IDEmpresa=$row[ID]",$lin);
			while($row2 = mysql_fetch_array($res2))
			{
				echo "<tr height=23>
					<td class=content-blk vAlign=top width=24%>&nbsp;</td>
					<td class=content-blk vAlign=top width=2%>&nbsp;</td>
					<td class=content-blk vAlign=top width=74%>&nbsp;</td>
					</tr><tr height=23>
					<td class=content-blk vAlign=top width=24%><b>$row2[Tipo]</b></td>
					<td class=content-blk vAlign=top width=2%>:</td>
					<td class=content-blk vAlign=top width=74%>$row2[Telefono]<br>
			&nbsp;</td>
			</tr>
				";
			}
		echo "
			<tr height=6>
				<td colSpan=3>&nbsp;</td>
			</tr>
			<tr height=23>
				<td class=content-blk vAlign=top width=24% height=19><b>E-Mail</b></td>
				<td class=content-blk vAlign=top width=2% height=19>:</td>
				<td class=content-blk vAlign=top width=74% height=19>$row[Correo]<br>
		&nbsp;</td>
			</tr>
			<tr height=6>
				<td colSpan=3>&nbsp;</td>
			</tr>
			<tr height=23>
				<td class=content-blk vAlign=top width=24% height=19><b>Página Web</b></td>
				<td class=content-blk vAlign=top width=2% height=19>:</td>
				<td class=content-blk vAlign=top width=74% height=19><a href=http://$row[Web]>$row[Web]</a><br>
		&nbsp;</td>
			</tr>
			<tr height=6>
				<td colSpan=3>&nbsp;</td>
			</tr>
			<tr height=23>
				<td class=content-blk vAlign=top width=24% height=19><b>Persona 
				de Contacto</b></td>
				<td class=content-blk vAlign=top width=2% height=19>:</td>
				<td class=content-blk vAlign=top width=74%>$row[Persona_Contacto]<br>
		&nbsp;</td>
			</tr>
			<tr height=6>
				<td colSpan=3>&nbsp;</td>
			</tr>
			<tr height=23>
				<td class=content-blk vAlign=top width=24% height=19><b>Posición 
				dentro de la Empresa</b></td>
				<td class=content-blk vAlign=top width=2% height=19>:</td>
				<td class=content-blk vAlign=top width=74% height=19>$row[Puesto]</td>
			</tr>
			<tr height=23>
				<td class=content-blk vAlign=top width=24%>&nbsp;</td>
				<td class=content-blk vAlign=top width=2%>&nbsp;</td>
				<td class=content-blk vAlign=top width=74%>&nbsp;</td>
			</tr>
			<tr height=23>
				<td class=content-blk vAlign=top width=24%><b>Productos/Servicios</b></td>
				<td class=content-blk vAlign=top width=2%>:</td>
				<td class=content-blk vAlign=top width=74%>$row[Productos]</td>
			</tr>
		</table>
	";
	
	
	

}
echo "</p>";
//<a onmousedown=MM_openBrWindow('$row[Logo]','','width=520,height=390') href=javascript:;>
//echo "chao";
	/*$res2=mysql_query("select * from nuke_telefonos where IDEmpresa=$row[ID]",$lin);
	$row2=mysql_fetch_array($res2);
	echo "hola:$row2[Telefono]";*/
CloseTable();  
OpenTable();
$sql2=mysql_query("select * from nuke_fotos where IDEmpresa=$_GET[empre] and Principal=0",$lin);

echo "<p align=center>";
while($rs2=mysql_fetch_array($sql2))
{
	//<a onmousedown=MM_openBrWindow('$rs2[Foto]','','width=520,height=390') href=javascript:>
	echo "<a href='$rs2[Foto]'><img border=0 src='$rs2[Foto]' width=156 height=132></a>  ";
	/*<a onmousedown=MM_openBrWindow('$rs2[Foto]','','width=520,height=390'); href=javascript:;>
	<img border=0 src='$rs2[Foto]' width=156 height=132></a>*/
}
echo "</p>";
CloseTable();
CloseTable();
mysql_free_result($sql);
mysql_free_result($res);
mysql_free_result($res2);
mysql_free_result($sql2);
mysql_free_result($sql3);

include("footer.php");

function ConectaArbo()
{
   if (!($link=mysql_connect("localhost","root","")))
   {
      echo "Error conectando a la base de datos.";
      exit();
   }
   if (!mysql_select_db("auto",$link))
   {
      echo "Error seleccionando la base de datos.";
      exit();
   }
   return $link;
}


?>

<script language="JavaScript" type="text/JavaScript">
function MM_openBrWindow(theURL,winName,features) 
{ 
  window.open(theURL,winName,features);
}
</script>
