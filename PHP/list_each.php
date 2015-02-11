<?php

    $paperDup = array
                (   'copier' => "Copier & Multipurpose",
                    'inkjet' => "Inkjet Printer",
                    'laser' => "Laser Printer",
                    'photo' => "Photographic Paper");

    while(list($item, $description) = each($paperDup))
        echo "$item: $description<br>";

    echo "<br>";
    echo "------------------------------------------------";
    echo "<br>";

    $paper = array
                (   "Copier & Multipurpose",
                    "Inkjet Printer",
                    "Laser Printer",
                    "Photographic Paper");

    while (list($item, $description) = each($paper))
        echo "$item : $description<br>";
?>

