<?php
    // Connecting to a MySQL server with mysqli
    require_once 'login.php';
    $conn = new mysqli($hn, $un, $pw, $db);
    if ($conn->connect_error) die($conn->connect_error);

    // Querying a database with mysqli
    $query = "SELECT * FROM classics";
    $qresult = $conn->query($query);
    if (!$qresult) die($conn->error);

    // Fetching results one cell at a time
    // Step 1: call $qresult->num_rows to determin the number of rows;
    // Step 2: for each row index $j, call the $qresult->data_seek($j) to set data cursor to row $j;
    // Step 3: each call of $qresult->fetch_assoc(), 
    //        return the associative array of current row indicated by data cursor, 
    //        and move the data cursor to the next row.

    $rows = $qresult->num_rows;
    for ($j = 0 ; $j < $rows ; ++$j)
    {

        $qresult->data_seek($j);
//        echo 'Author: ' . $qresult->fetch_assoc()['author'] . '<br>';
        echo $j . ' - Author: ' . $qresult->fetch_assoc()['author'] . '<br>';

//        $qresult->data_seek($j);
//        echo 'Title: ' . $qresult->fetch_assoc()['title'] . '<br>';
        echo $j . ' - Title: ' . $qresult->fetch_assoc()['title'] . '<br>';

//        $qresult->data_seek($j);
//        echo 'Category: ' . $qresult->fetch_assoc()['category'] . '<br>';
        echo $j . ' - Category: ' . $qresult->fetch_assoc()['category'] . '<br>';

//        $qresult->data_seek($j);
//        echo 'Year: ' . $qresult->fetch_assoc()['year'] . '<br>';
        echo $j . ' - Year: ' . $qresult->fetch_assoc()['year'] . '<br>';

//        $qresult->data_seek($j);
//        echo 'ISBN: ' . $qresult->fetch_assoc()['isbn'] . '<br><br>';
        echo $j . ' - ISBN: ' . $qresult->fetch_assoc()['isbn'] . '<br><br>';
    }

    $qresult->close();

    $conn->close();
?>