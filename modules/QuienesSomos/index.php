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
$subject = "$sitename "._QuienesSomos."";
/**********************************/

include("header.php");
//include("cate.php");

OpenTable();

		echo "<h3><p align=center><b><font size=6>.-Quienes Somos-.</font></b></p></h3>";
OpenTable();

echo "<p align=center><img border=0 src=/imagenes/quienessomos.gif></p>
"; // height=860 width=900>

/*echo "
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>TUMUNDOAUTOMOTRIZ.COM es una empresa que nace, basándose en un 
proyecto debidamente estudiado y analizado, &nbsp;con el fin de comercializar 
vehículos nuevos y usados y radicar de una vez por todas con las incomodidades 
sufridas por todos los consumidores del mundo automotriz, cuando quieren 
conseguir repuestos, servicios, accesorios y la mayor información, para de 
manera rápida hallar &nbsp;lo que quieren para su vehiculo a nivel nacional. Desde 
que se inicio este proyecto se ha caracterizado por la seriedad, responsabilidad 
y atención a todas las inquietudes de nuestros anunciantes que gracias a sus 
ideas y las nuestras hemos logrado construir el mejor portal automotriz del 
mundo y &nbsp;así &nbsp;lograr un alto grado de confiabilidad y eficiencia ante nuestros 
visitantes.</font></b></p>
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>&nbsp;</font></b></p>
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>TUMUNDOAUTOMOTRIZ.COM cuenta con un sistema de búsqueda con la 
finalidad de ofrecerle a todos nuestros usuarios la manera mas cómoda y sencilla 
para la localización de todas las empresas que prestan servicio automotriz, 
brindando toda la información&nbsp; tanto en ubicación, precios, ofertas, servicios y 
mucho mas.</font></b></p>
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>&nbsp;</font></b></p>
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>Nuestra Misión es crear un sitio Web donde cada persona Natural o 
Jurídica que quiera comprar o vender su vehiculo lo haga de manera segura y que 
todos nuestros anunciantes se sientan identificados&nbsp; y satisfechos por saber que 
su producto se encuentra publicitado en el mejor portal publicitario como lo es 
TUMUNDOAUTOMOTRIZ.COM y que cada visitante pueda encontrar todos los servicios 
para su automóvil como: Talleres mecánicos, talleres eléctricos, casas de 
repuestos, latonería, pintura, accesorios, repotenciación, aire acondicionado, 
sonidos, centro de lubricantes, servicios de grúas, concesionarios de vehículos 
nuevos y usados y muchísimo mas.</font></b></p>
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>&nbsp;</font></b></p>
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>Esperamos que sea de vuestro agrado y que disfruten de nuestro 
portal y de todos nuestros servicios. Si desea conocer más de nuestra 
organización contáctenos que tenemos el mejor grupo de emprendedores dispuestos 
a darle la atención que usted se merece.</font></b></p>
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>&nbsp;</font></b></p>
<p class=MsoNormal style=margin-right:2.2pt;text-align:justify><b>
<font size=5>Gracias por preferirnos</font></b></p>

";*/

/*echo "
<p align=center><font size=12>TUMUNDOAUTOMOTRIZ.COM es una empresa que nace, basándose en un proyecto 
debidamente estudiado y analizado, &nbsp;con el fin de comercializar vehículos nuevos 
y usados y radicar de una vez por todas con las incomodidades sufridas por todos 
los consumidores del mundo automotriz, cuando quieren conseguir repuestos, 
servicios, accesorios y la mayor información, para de manera rápida hallar &nbsp;lo 
que quieren para su vehiculo a nivel nacional. Desde que se inicio este proyecto 
se ha caracterizado por la seriedad, responsabilidad y atención a todas las 
inquietudes de nuestros anunciantes que gracias a sus ideas y las nuestras hemos 
logrado construir el mejor portal automotriz del mundo y &nbsp;así &nbsp;lograr un alto 
grado de confiabilidad y eficiencia ante nuestros visitantes.<br>

TUMUNDOAUTOMOTRIZ.COM cuenta con un sistema de búsqueda con la finalidad de 
ofrecerle a todos nuestros usuarios la manera mas cómoda y sencilla para la 
localización de todas las empresas que prestan servicio automotriz, brindando 
toda la información&nbsp; tanto en ubicación, precios, ofertas, servicios y mucho 
mas. <br>

Nuestra Misión es crear un sitio Web donde cada persona Natural o Jurídica que 
quiera comprar o vender su vehiculo lo haga de manera segura y que todos 
nuestros anunciantes se sientan identificados&nbsp; y satisfechos por saber que su 
producto se encuentra publicitado en el mejor portal publicitario como lo es 
TUMUNDOAUTOMOTRIZ.COM y que cada visitante pueda encontrar todos los servicios 
para su automóvil como: Talleres mecánicos, talleres eléctricos, casas de 
repuestos, latonería, pintura, accesorios, repotenciación, aire acondicionado, 
sonidos, centro de lubricantes, servicios de grúas, concesionarios de vehículos 
nuevos y usados y muchísimo mas.<br>

Esperamos que sea de vuestro agrado y que disfruten de nuestro portal y de todos 
nuestros servicios. Si desea conocer más de nuestra organización contáctenos que 
tenemos el mejor grupo de emprendedores dispuestos a darle la atención que usted 
se merece.
<br>
<br>
<br>
Gracias por preferirnos </font></p>

		";*/


CloseTable();  
CloseTable();
include("footer.php");
?>