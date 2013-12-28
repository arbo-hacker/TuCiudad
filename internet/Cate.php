<?php

function Conecta()
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
