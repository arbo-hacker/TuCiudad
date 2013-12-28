<?php

/************************************************************/
/* OpenTable Functions                                      */
/*                                                          */
/* Define the tables look&feel for you whole site. For this */
/* we have two options: OpenTable and OpenTable2 functions. */
/* Then we have CloseTable and CloseTable2 function to      */
/* properly close our tables. The difference is that        */
/* OpenTable has a 100% width and OpenTable2 has a width    */
/* according with the table content                         */
/************************************************************/

function OpenTable() {
    global $bgcolor1, $bgcolor2;
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">
  <tr>
    <td>
        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">
<tr>

<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">
  <tr> 
    <td width=\"14\"><img src=\"themes/bluetarget/images/Table_Silver_Middle_Custom_TopLeft.gif\" width=14 height=14 alt=\"\"></td>
    <td><table width=\"100%\" height=\"14\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">
        <tr> 
          
          <td background=\"themes/bluetarget/images/Table_Silver_Middle_TopMiddle.gif\"><img src=\"themes/bluetarget/images/spacer.gif\" width=20 height=14 alt=\"\"></td>
        </tr>
      </table></td>
    <td width=\"13\"><img src=\"themes/bluetarget/images/Table_Silver_Middle_Custom_TopRight.gif\" width=13 height=14 alt=\"\"></td>
  </tr>
  <tr> 
    <td width=\"14\" background=\"themes/bluetarget/images/Table_Silver_Middle_Left.gif\">&nbsp;</td>
    <td bgcolor=\"505F7D\">
                            ";
}

function CloseTable() {
    echo "    </td>
    <td width=\"13\" background=\"themes/bluetarget/images/Table_Blue_Middle_Custom_Right.gif\">&nbsp;</td>
  </tr>
  <tr> 
    <td width=\"14\"><img src=\"themes/bluetarget/images/Table_Silver_Bottom_Custom_Left.gif\" width=14 height=19 alt=\"\"></td>
    <td background=\"themes/bluetarget/images/Table_Silver_Bottom_Custom_Middle.gif\">&nbsp;</td>
    <td width=\"13\"><img src=\"themes/bluetarget/images/Table_Silver_Bottom_Custom_Right.gif\" width=13 height=19 alt=\"\"></td>
  </tr>
</table>
</td></tr></table>
";
}

function OpenTable2() {
    global $bgcolor1, $bgcolor2;
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\" bgcolor=\"$bgcolor2\" align=\"center\"><tr><td>\n";
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"8\" bgcolor=\"$bgcolor1\"><tr><td>\n";
}

function CloseTable2() {
    echo "</td></tr></table></td></tr></table>\n";
}

?>