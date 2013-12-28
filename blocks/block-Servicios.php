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

if (eregi("block-Servicios.php",$_SERVER['SCRIPT_NAME'])) {
    Header("Location: index.php");
    die();
}
//include("Cate3.php");

//$link=Conecta3();

//$result=mysql_query("select * from nuke_cate order by Descri",$link); /*Cadena para recuperar las categorias*/


$content= "
<ul>
	<li>
		Clasificados
	</li>
	<li>
		Tarifa Transporte
	</li>
	<li>
		Chat
	</li>
	<li>
		Correo
	</li>
	<li>
		Cartelera Cines
	</li>
	<li>
		Opinión
	</li>
</ul>
";


$content=$content."";
				


?>