<?php

/************************************************************/
/* OpenTable Functions                                      */
/*                                                          */
/* Define the tables look&feel for you whole site. For this */
/* we have two options: OpenTable and OpenTable2 functions. */
/* Then we have CloseTable and CloseTable2 function to      */
/* properly close our tables. The difference is that        */
/* OpenTable has a 100% width and OpenTable2 has a width    */
/* according..cambia la nota principal                      */
/************************************************************/

function OpenTable() {
    global $bgcolor1, $bgcolor2;
    echo "









<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">
  <tr>
    <td width=\"100%\">
      <table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" background=\"./themes/FX-FANTASY/imagenes/blocke_eskina_BG.gif\">
        <tr>
          <td><img border=\"0\" src=\"./themes/FX-FANTASY/imagenes/blocke_eskina_izq.gif\" width=\"118\" height=\"60\"></td>
          <td width=\"100%\">
            <table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">
              <tr>
                <td width=\"100%\">
                  <p align=\"center\">&nbsp;</td>
              </tr>
              <tr>
                <td width=\"100%\">
                  <p align=\"center\"><font color=\"#FFFFFF\" size=\"1\" face=\"Verdana\"><b>FX-FANTASY</b></font></td>
              </tr>
            </table>
          </td>
          <td>
            <p align=\"right\"><img border=\"0\" src=\"./themes/FX-FANTASY/imagenes/blocke_eskina_der.gif\" width=\"119\" height=\"60\"></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width=\"100%\">
      <table border=\"0\" width=\"100%\" bgcolor=\"#A9ADB6\" cellspacing=\"0\" cellpadding=\"0\">
        <tr>
          <td width=\"37\" background=\"./themes/FX-FANTASY/imagenes/blocke_borde_izquierdo.gif\"><img border=\"0\" src=\"./themes/FX-FANTASY/imagenes/blocke_borde_izquierdo.gif\" width=\"37\" height=\"1\"></td>
          <td width=\"100%\">







";
}

function CloseTable() {
    echo "







 </td>
          <td width=\"39\" background=\"./themes/FX-FANTASY/imagenes/blocke_borde_derecho.gif\"><img border=\"0\" src=\"./themes/FX-FANTASY/imagenes/blocke_borde_derecho.gif\" width=\"39\" height=\"1\"></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width=\"100%\">
      <table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">
        <tr>
          <td width=\"33%\" background=\"./themes/FX-FANTASY/imagenes/blocke_BG_inferior.gif\"><img border=\"0\" src=\"./themes/FX-FANTASY/imagenes/blocke_eskina_izq_2.gif\" width=\"42\" height=\"36\"></td>
          <td width=\"33%\" background=\"./themes/FX-FANTASY/imagenes/blocke_BG_inferior.gif\">
            <p align=\"center\"><img border=\"0\" src=\"./themes/FX-FANTASY/imagenes/blocke_adorno_inferior.gif\" width=\"170\" height=\"36\"></td>
          <td width=\"34%\" background=\"./themes/FX-FANTASY/imagenes/blocke_BG_inferior.gif\">
            <p align=\"right\"><img border=\"0\" src=\"./themes/FX-FANTASY/imagenes/blocke_eskina_der_2.gif\" width=\"43\" height=\"36\"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>










";
}

function OpenTable2() {
    global $bgcolor1, $bgcolor2;
    echo "<table border=\"0\" cellspacing=\"1\" cellpadding=\"0\" bgcolor=\"$bgcolor2\" align=\"center\"><tr><td>\n";
    echo "<table border=\"0\" cellspacing=\"1\" cellpadding=\"8\" bgcolor=\"$bgcolor1\"><tr><td>\n";
}

function CloseTable2() {
    echo "</td></tr></table></td></tr></table>\n";
}

?>