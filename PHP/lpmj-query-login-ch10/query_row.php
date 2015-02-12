<?php
    // Connecting to a MySQL server with mysqli
    require_once 'login.php';
    $conn = new mysqli($hn, $un, $pw, $db);
    if ($conn->connect_error) die($conn->connect_error);

    // Querying a database with mysqli
    $query = "SELECT * FROM classics";
    $qresult = $conn->query($query);
    if (!$qresult) die($conn->error);

    // Fetching qresults one row at a time
    // The fetch_array method can return three types of array according to the value passed to it:
    // 
    // MYSQLI_NUM
    // Numeric array. 
    // Each column appears in the array in the order in which you defined it when you created (or altered) the table. 
    // The zeroth element of the array contains the first column, and so on.
    // 
    // MYSQLI_ASSOC
    // Associative array.
    // Each key is the name of a column. 
    // Because items of data are referenced by column name (rather than index number), 
    // use this option where possible in your code to make debugging easier and help other programmers better manage your code.
    // Associative arrays are usually more useful than numeric ones,
    //     because you can refer to each column by name, such as $row['author'],
    //     instead of trying to remember where it is in the column order.
    // 
    // MYSQLI_BOTH
    // Associative and numeric array.

    $rows = $qresult->num_rows;
    for ($j = 0 ; $j < $rows ; ++$j)
    {
        $qresult->data_seek($j);
        $row = $qresult->fetch_array(MYSQLI_ASSOC);
        echo 'Author: ' . $row['author'] . '<br>';
        echo 'Title: ' . $row['title'] . '<br>';
        echo 'Category: ' . $row['category'] . '<br>';
        echo 'Year: ' . $row['year'] . '<br>';
        echo 'ISBN: ' . $row['isbn'] . '<br><br>';
    }

    $qresult->close();

    $conn->close();
?>

