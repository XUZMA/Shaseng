<?php
    $f = $c = '';
    if (isset($_POST['f'])) $f = sanitizeString($_POST['f']);
    if (isset($_POST['c'])) $c = sanitizeString($_POST['c']);
    if ($f != '')
    {
        $c = intval((5 / 9) * ($f - 32));
        $out = "$f ¡ãf equals $c ¡ãc";
    }
    elseif($c != '')
    {
        $f = intval((9 / 5) * $c + 32);
        $out = "$c ¡ãc equals $f ¡ãf";
    }
    else $out = "";

    echo <<<_END
    <html>
        <head>
            <title>Temperature Converter</title>
        </head>
        <body>
<pre>
Enter either Fahrenheit or Celsius and click on Convert
<b>$out</b>
<form method="post" action="convert.php">
Fahrenheit <input type="text" name="f" size="7">
Celsius <input type="text" name="c" size="7">
<input type="submit" value="Convert">
</form>
</pre>
        </body>
    </html>
_END;

    function sanitizeString($var)
    {
        // get rid of unwanted slashes
        $var = stripslashes($var);

        // strip HTML entirely from an input
        $var = strip_tags($var);

        // remove any HTML from a string
        $var = htmlentities($var);

        return $var;
    }

    function sanitizeMySQL($connection, $var)
    {
        // Use the following lines of code to prevent escape characters 
        // from being injected into a string that will be presented to MySQL.
        // This function takes into account the current character set of a MySQL connection, 
        // so it must be used with a mysqli connection object.
        $var = $connection->real_escape_string($var);

        $var = sanitizeString($var);

        return $var;
    }
?>
