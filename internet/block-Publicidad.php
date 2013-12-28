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

if (eregi("block-Categorias.php",$_SERVER['SCRIPT_NAME'])) {
    Header("Location: index.php");
    die();
}
include("Cate2.php");

$link=Conectad();

$result=mysql_query("select * from nuke_publicidad",$link); /*Cadena para recuperar las categorias*/


//$content= "<ul>";
//$content= "";
while($row = mysql_fetch_array($result))
	{
		//$sql=mysql_query("select * from nuke-empresa where ID=$row[IDEmpresa]",$link);
		//$rs = mysql_fetch_array($sql);
	//$content = "<p align=center>";
						
					if($row[IDEmpresa]!=0)
					{
						$content=$content."<a href=/modules.php?name=Muestra&empre=$row[IDEmpresa]><img border=0 src=$row[Logo] width=136 height=124></a>";
						//$content=$content."<a onmousedown=MM_openBrWindow('$row[Logo]','','width=520,height=390') href=javascript:;><img border=0 src=$row[Logo] width=136 height=124></a>";
					}
					else
					{
						$content=$content."<img border=0 src=$row[Logo] width=136 height=124>";
					}
					$content=$content."<br><br>";		
					
	}
/*
<a onmousedown="MM_openBrWindow('imagenes/1g.jpg','','width=520,height=390')" href="javascript:;">
					<img height="105" src="file:///C:/Documents%20and%20Settings/Alejandro/Mis%20documentos/Ereinca/Tu%20Mundo%20Automotriz/Servi%20Autoparte,%20s_r_l_%20-%20Taller%20especializado%20en%20Renault%20-%20TodoAuto_com_ve_archivos/1p.jpg" width="140" border="0"></a>

*/	
//echo "</ul>";
//$content=$content."</p>";		
mysql_free_result($result);
mysql_close($link); //cierra la conexion



?>
<script language="JavaScript" type="text/JavaScript">

function MM_openBrWindow(theURL,winName,features) 
{ 
  window.open(theURL,winName,features);
}

</script>