<?php
if (!eregi("admin.php", $_SERVER['SCRIPT_NAME'])) { die ("Access Denied"); }
if ($radminsuper==1) {
    adminmenu("admin.php?op=optimize", "Optimizar BD", "optimize.gif");
}

?>