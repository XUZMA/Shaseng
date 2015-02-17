<?php
    require_once 'login.php';
    $conn = new mysqli($hn, $un, $pw, $db);
    if ($conn->connect_error) die($conn->connect_error);


    // Issuing prepared statements
    $stmt = $conn->prepare('INSERT INTO classics VALUES(?,?,?,?,?)');

    // The first argument to bind_param is a string representing the type of each of the arguments in turn.
    // i The data is an integer.
    // d The data is a double.
    // s The data is a string.
    // b The data is a BLOB (and will be sent in packets).
    $stmt->bind_param('sssss', $author, $title, $category, $year, $isbn);

    $author = 'Emily Bronte';
    $title = 'Wuthering Heights';
    $category = 'Classic Fiction';
    $year = '1847';
    $isbn = '9780553212587';
    $stmt->execute();
    printf("%d Row inserted.\n", $stmt->affected_rows);
    $stmt->close();
    $conn->close();
?>
