<?php
    $object = new User;
    $object->name = "i";
    $object->password = "mypass";
    print_r($object); echo "<br>";

    $yaobject = new User;

    // $yaobject and $object are two different objects.
    //$yaobject = clone $object;

    // $yaobject and $object refer to the same object;
    // there is only one object.
    $yaobject = $object; 

    print_r($yaobject); echo "<br>";

    $yaobject->name = "Amy";
    $yaobject->password = "amypassword";

    print "<br>";
    print_r($object); echo "<br>";
    print_r($yaobject); echo "<br>";

    $object->name = "Joe";
    $object->password = "joepassword";

    print "<br>";
    print_r($object); echo "<br>";
    print_r($yaobject); echo "<br>";

    class User
    {
        public $name, $password;
        function save_user()
        {
            echo "Save User code goes here";
        }
    }
?>

