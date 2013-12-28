<?php

/************************************************************/
/* OpenTable Functions                                      */
/*                                                          */
/* Define the tables look&feel for you whole site. For this */
/* we have two options: OpenTable and OpenTable2 functions. */
/* Then we have CloseTable and CloseTable2 function to      */
/* properly close our tables.                               */
/************************************************************/

function OpenTable() {
    global $bgcolor1, $bgcolor2;
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"4\">
  <tr>
    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"1\" border=\"0\">
        <tr>
          <td bgcolor=\"#005A88\"><table width=\"100%\" border=\"0\" cellpadding=\"1\" cellspacing=\"0\">
              <tr>
                <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"1\">
                    <tr>
                      <td bgcolor=\"#000000\"><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\">
                          
                          <tr>
                            <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"1\">
                                <tr>
                                  <td bgcolor=\"#000000\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"4\">
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
                          
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>";
}

function OpenTable2() {
    global $bgcolor1, $bgcolor2;
    echo "<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"4\">
  <tr>
    <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">
        <tr> 
          <td class=\"row1\" width=\"100%\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\">
              <tr> 
                <td>";
}

function CloseTable2() {
    echo "</td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>";
}

?>