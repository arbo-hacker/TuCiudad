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

if (eregi("block-Banner.php",$_SERVER['SCRIPT_NAME'])) {
    Header("Location: index.php");
    die();
}

$content= "
<p align=center><img src=imagenes/banners/banner.gif border=0></p>
";



				


?>