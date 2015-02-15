<?php
    require_once 'login.php';
    $conn = new mysqli($hn, $un, $pw, $db);
    if ($conn->connect_error) die($conn->connect_error);

    // Creating a table called cats
    $query = "CREATE TABLE cats (
        id SMALLINT NOT NULL AUTO_INCREMENT,
        family VARCHAR(32) NOT NULL,
        name VARCHAR(32) NOT NULL,
        age TINYINT NOT NULL,
        PRIMARY KEY (id))";
    $result = $conn->query($query);
    if (!$result) die ("Database access failed: " . $conn->error);

    // Describing the table cats
    $query = "DESCRIBE cats";
    $result = $conn->query($query);
    if (!$result) die ("Database access failed: " . $conn->error);
    $rows = $result->num_rows;
    echo "<table><tr><th>Column</th><th>Type</th><th>Null</th><th>Key</th></tr>";
    for ($j = 0 ; $j < $rows ; ++$j)
    {
        $result->data_seek($j);
        $row = $result->fetch_array(MYSQLI_NUM);
        echo "<tr>";
        for ($k = 0 ; $k < 4 ; ++$k) echo "<td>$row[$k]</td>";
            echo "</tr>";
    }
    echo "</table>";

    // Adding Data
    // Because the id column is of type AUTO_INCREMENT, 
    // and MySQL will decide what value to assign according to the next available number in sequence,
    // so we simply pass a NULL value, which will be ignored.

    $query = "INSERT INTO cats VALUES(NULL, 'Lion', 'Leo', 4)";
    $result = $conn->query($query);
    if (!$result) die ("Database access failed: " . $conn->error);

    $query = "INSERT INTO cats VALUES(NULL, 'Cougar', 'Growler', 2)";
    $result = $conn->query($query);
    if (!$result) die ("Database access failed: " . $conn->error);

    $query = "INSERT INTO cats VALUES(NULL, 'Cheetah', 'Charly', 3)";
    $result = $conn->query($query);
    if (!$result) die ("Database access failed: " . $conn->error);

    // Retrieving rows from the cats table
    $query = "SELECT * FROM cats";
    $result = $conn->query($query);
    if (!$result) die ("Database access failed: " . $conn->error);
    $rows = $result->num_rows;
    echo "<table><tr> <th>Id</th> <th>Family</th><th>Name</th><th>Age</th></tr>";
    for ($j = 0 ; $j < $rows ; ++$j)
    {
        $result->data_seek($j);
        $row = $result->fetch_array(MYSQLI_NUM);
        echo "<tr>";
        for ($k = 0 ; $k < 4 ; ++$k) echo "<td>$row[$k]</td>";
        echo "</tr>";
    }
    echo "</table>";

    // Deleting Data
    // $query = "DELETE FROM cats WHERE name='Growler'";
    // $result = $conn->query($query);
    // if (!$result) die ("Database access failed: " . $conn->error);

    // $query = "DELETE FROM cats WHERE name='Leo'";
    // $result = $conn->query($query);
    // if (!$result) die ("Database access failed: " . $conn->error);

    // $query = "DELETE FROM cats WHERE name='Charly'";
    // $result = $conn->query($query);
    // if (!$result) die ("Database access failed: " . $conn->error);

    // $query = "DELETE FROM cats WHERE name='Stumpy'";
    // $result = $conn->query($query);
    // if (!$result) die ("Database access failed: " . $conn->error);

    // Updating Data
    // Renaming Charly the cheetah to Charlie
    // $query = "UPDATE cats SET name='Charlie' WHERE name='Charly'";
    // $result = $conn->query($query);
    // if (!$result) die ("Database access failed: " . $conn->error);

    // Adding data to table cats and reporting the insertion id
    // $query = "INSERT INTO cats VALUES(NULL, 'Lynx', 'Stumpy', 5)";
    // $result = $conn->query($query);
    // if (!$result) die ("Database access failed: " . $conn->error);
    // $insertID = $result->insert_id;
    // echo "The Insert ID was: " . $insertID;

    // Using insert IDs
    // $query = "INSERT INTO owners VALUES($insertID, 'Ann', 'Smith')";
    // $result = $conn->query($query);

    // Dropping a Table
    // $query = "DROP TABLE cats";
    // $result = $conn->query($query);
    // if (!$result) die ("Database access failed: " . $conn->error);

?>