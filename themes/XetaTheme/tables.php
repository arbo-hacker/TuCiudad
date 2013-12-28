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
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"7\">
  <tr>
    <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
        <tr>
          <td bgcolor=\"#000000\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"1\">
              <tr>
                <td bgcolor=\"#ffffff\"><table width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"0\" bgcolor=\"#80A4C0\">
                    <tr>
                      <td>";
}

function CloseTable() {
    echo "</td>
                    </tr>
            </table></td>
              </tr>
      </table></td>
        </tr>
      </table>
</td>
  </tr>
</table>";
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