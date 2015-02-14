<?php
    require_once 'login.php';
    $conn = new mysqli($hn, $un, $pw, $db);

    // The $_POST Array
    //
    // A browser sends user input through either a Get request or Post request. 
    // The Post request is usually preferred(because it avoids placing unsightly data in the browser¡¯s address bar).
    // The web server bundles up all of the user input (even if the form was filled out with a hundred fields) 
    // and puts in into an array named $_POST.
    //
    // Depending on whether a form has been set to use the Post or the Get method, 
    // either the $_POST or the $_GET associative array will be populated with the form data.

    if ($conn->connect_error) die($conn->connect_error);

    // Use the isset function to check whether values for all the fields have been posted to the program.
    if (isset($_POST['delete']) && 
        isset($_POST['isbn']))
    {

        // The HTML form appends the ISBN to the DELETE FROM query string created in the variable $query.
        // which is then passed to the query method of the $conn object to issue it to MySQL.

        $isbn = get_post($conn, 'isbn');
        $query = "DELETE FROM classics WHERE isbn='$isbn'";
        $qresult = $conn->query($query);
        if (!$qresult)
            echo "DELETE failed: $query<br>" .
                $conn->error . "<br><br>";
    }

    if (isset($_POST['author']) &&
        isset($_POST['title']) &&
        isset($_POST['category']) &&
        isset($_POST['year']) &&
        isset($_POST['isbn']))
    {
        $author = get_post($conn, 'author');
        $title = get_post($conn, 'title');
        $category = get_post($conn, 'category');
        $year = get_post($conn, 'year');
        $isbn = get_post($conn, 'isbn');
        $query = 
            "INSERT INTO classics VALUES" .
            "('$author', '$title', '$category', '$year', '$isbn')";
        $qresult = $conn->query($query);
        if (!$qresult)
            echo "INSERT failed: $query<br>" .
                $conn->error . "<br><br>";
    }

// The <pre> and </pre> tags are used to force a monospaced font and allow all the inputs to line up neatly.
// The carriage returns at the end of each line are also output when inside <pre> tags.

echo <<<_END
    <form action="sqltest.php" method="post">
    <pre>
Author      <input type="text" name="author">
Title       <input type="text" name="title">
Category    <input type="text" name="category">
Year        <input type="text" name="year">
ISBN        <input type="text" name="isbn">
            <input type="submit" value="ADD RECORD">
    </pre>
    </form>
_END;

    $query = "SELECT * FROM classics";
    $qresult = $conn->query($query);
    if (!$qresult) die ("Database access failed: " . $conn->error);
    $rows = $qresult->num_rows;
    for ($j = 0 ; $j < $rows ; ++$j)
    {
        $qresult->data_seek($j);
        $row = $qresult->fetch_array(MYSQLI_NUM);

echo <<<_END
    <pre>
Author      $row[0]
Title       $row[1]
Category    $row[2]
Year        $row[3]
ISBN        $row[4]
    </pre>
<form action="sqltest.php" method="post">
<input type="hidden" name="delete" value="yes">
<input type="hidden" name="isbn" value="$row[4]">
<input type="submit" value="DELETE RECORD">
</form>
_END;

    // The ISBN($row[4]) uniquely identifies each record. 

    }

    $qresult->close();
    $conn->close();

    function get_post($conn, $var)
    {
        // real_escape_string method of the connection object 
        // to strip out any characters that a hacker may have inserted in order to break into or alter your database
        return $conn->real_escape_string($_POST[$var]);
    }
?>