
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
//echo "<br><h3><p align=center><b><font size=6>$rs[Nombre]</font></b><br><br><img border=0 src='$rs3[Foto]'></p></h3>";


echo "<P align=center><B><FONT size=6>Prix Racing C.A.</FONT></B><BR>&nbsp;</P>";
OpenTable();



$res=mysql_query("select * from nuke_empresa where ID=$_GET[empre]",$lin); /*Cadena para recuperar las categorias*/
//echo "hola";
$conta=0;
echo "<p align=center>";
while($row = mysql_fetch_array($res))
{
	echo "
  	<P align=center>
		<IMG src=$row[Foto_local] 
	  	border=0 align=left width=174 height=134>
	  </P>
	  <TABLE cellSpacing=0 cellPadding=7 width=65% border=0 id=table2>
    	<TBODY>
      	<TR>
        	<TD>
          	<TABLE cellSpacing=0 cellPadding=2 width=100% border=0 id=table3>
            	<TBODY>
              	<TR>
                	<TD bgColor=#000000>
                  	<TABLE cellSpacing=0 cellPadding=1 width=100% border=0 id=table4>
                    	<TBODY>
                      	<TR>
                        	<TD bgColor=#ffffff>
                          	<TABLE cellSpacing=0 cellPadding=4 width=100% bgColor=#80a4c0 border=0 id=table5>
                            	<TBODY>
                              	<TR>
                                	<TD rowspan=2>
                                		<P align=center>
                                			<TABLE id=table6 height=246 cellSpacing=0 cellPadding=3 width=100% border=0>
                                			<TBODY>
                                				<TR height=23>
                                					<TD class=content-blk vAlign=top width=24%>
                                						<B>Descripción de la Empresa</B>
                                					</TD>
                                					<TD class=content-blk vAlign=top width=2%>:</TD>
                                					<TD class=content-blk vAlign=top width=74%>$row[Descripcion]<BR>&nbsp;
                                					</TD>
                                				</TR>
                                				<TR height=6>
                                					<TD colSpan=3>&nbsp;
                                					</TD>
                                				</TR>
                                				<TR height=23>
                                					<TD class=content-blk vAlign=top width=24%>
                                						<B>Dirección</B>
                                					</TD>
                                					<TD class=content-blk vAlign=top width=2%>:
                                					</TD>
                                					<TD class=content-blk vAlign=top width=74%>$row[Direccion]<BR>&nbsp;
                                					</TD>
                                				</TR>";
                                				
                                				$res2=mysql_query("select * from nuke_telefonos where IDEmpresa=$row[ID]",$lin);
																				while($row2 = mysql_fetch_array($res2))
																				{
																					echo "
																						<TR height=23>
		                                					<TD class=content-blk vAlign=top width=24%>&nbsp;</TD>
		                                					<TD class=content-blk vAlign=top width=2%>&nbsp;</TD>
		                                					<TD class=content-blk vAlign=top width=74%>&nbsp;</TD>
		                                				</TR>
		                                				<TR height=23>
		                                					<TD class=content-blk vAlign=top width=24%>
		                                						<B>$row2[Tipo]</B>
		                                					</TD>
		                                					<TD class=content-blk vAlign=top width=2%>:</TD>
		                                					<TD class=content-blk vAlign=top width=74%>$row2[Telefono]<BR>&nbsp;</TD>
		                                				</TR>
																					";
																				}
                                				echo "
                                				<TR height=6>
                                					<TD colSpan=3>&nbsp;</TD>
                                				</TR>
                                				
                                				<TR height=23>
                                					<TD class=content-blk vAlign=top width=24% height=19>
                                						<B>E-Mail</B>
                                					</TD>
                                					<TD class=content-blk vAlign=top width=2% height=19>:</TD>
                                					<TD class=content-blk vAlign=top width=74% height=19>$row[Correo]<BR>&nbsp;</TD>
                                				</TR>
                                				<TR height=6>
                                					<TD colSpan=3>&nbsp;</TD>
                                				</TR>
                                				<TR height=23>
                                					<TD class=content-blk vAlign=top width=24% height=19>
                                						<B>Página Web</B>
                                					</TD>
                                					<TD class=content-blk vAlign=top width=2% height=19>:</TD>
                                					<TD class=content-blk vAlign=top width=74% height=19>
                                						<a href=http://$row[Web]>$row[Web]</A><BR>&nbsp;
                                					</TD>
                                				</TR>
                                				<TR height=6>
                                					<TD colSpan=3>&nbsp;</TD>
                                				</TR>
                                				<TR height=23>
                                					<TD class=content-blk vAlign=top width=24% height=19>
                                						<B>Persona de Contacto</B>
                                					</TD>
                                					<TD class=content-blk vAlign=top width=2% height=19>:</TD>
                                					<TD class=content-blk vAlign=top width=74%>$row[Persona_Contacto]<BR>&nbsp;</TD>
                                				</TR>
                                				<TR height=6>
                                					<TD colSpan=3>&nbsp;</TD>
                                				</TR>
                                				<TR height=23>
                                					<TD class=content-blk vAlign=top width=24% height=19>
                                						<B>Posición dentro de la Empresa</B>
                                					</TD>
                                					<TD class=content-blk vAlign=top width=2% height=19>:</TD>
                                					<TD class=content-blk vAlign=top width=74% height=19>$row[Puesto]</TD>
                                				</TR>
                                				<TR height=23>
                                					<TD class=content-blk vAlign=top width=24%>&nbsp;</TD>
                                					<TD class=content-blk vAlign=top width=2%>&nbsp;</TD>
                                					<TD class=content-blk vAlign=top width=74%>&nbsp;</TD>
                                				</TR>
                                				<TR height=23>
                                					<TD class=content-blk vAlign=top width=24%>
                                						<B>Productos/Servicios</B>
                                					</TD>
                                					<TD class=content-blk vAlign=top width=2%>:</TD>
                                					<TD class=content-blk vAlign=top width=74%>$row[Productos]</TD>
                                				</TR>
                                			</TBODY>
                                			</TABLE>
                                		</P>
                                	</TD>
                                </TR>
                          		</TBODY>
                           	</TABLE>
                        	</TD>
                       	</TR>
                    	</TBODY>
                    </TABLE>
                	</TD>
                </TR>
           		</TBODY>
           	</TABLE>
       		</TD>
       	</TR>
			</TBODY>
		</TABLE>
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
   if (!mysql_select_db("tuciudad",$link))
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
