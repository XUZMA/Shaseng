<?php
// With autocomplete enabled, previous user inputs are recalled and automatically entered into fields as suggestions.
// The autofocus attribute gives immediate focus to an element when a page loads.
// The placeholder attribute lets you place into any blank input field a helpful hint to explain to users what they should enter.
// The required attribute is used to ensure that a field has been completed before a form is submitted.
// With override attributes, you can override form settings on an element-by-element basis.

// With HTML5, you no longer have to place <input> elements within <form> elements,
// because you can specify the form to which an input applies by supplying a form attribute.

echo <<<_END
    <html>
        <head>
            <title>Form Test</title>
        </head>
        <body>

<form action='h5formstest.php' method='post' autocomplete='on' id='form1'>
<input type='image' src='panda.jpg' width='120' height='80'>
<input type='text' name='name' size='50' placeholder='First & Last name'>
<input type='text' name='query' autofocus='autofocus' placeholder='query'>
<input type='text' name='username' placeholder='user name'>
<input type='password' name='password' autocomplete='off' placeholder='password'>
<input type='text' name='creditcard' required='required' placeholder='credit card'>
<input type='submit' formaction='formtest.php'>
</form>

<input type='text' name='account' form='form1' placeholder='account'>

Select destination:
<input type='url' name='site' list='links'>
<datalist id='links'>
<option label='Google' value='http://google.com'>
<option label='Yahoo!' value='http://yahoo.com'>
<option label='Bing' value='http://bing.com'>
<option label='Ask' value='http://ask.com'>
</datalist>

<input type='time' name='alarm' value='07:00' min='05:00' max='09:00'>
<input type='time' name='meeting' value='12:00' min='09:00' max='16:00' step='3600'>
Choose a color <input type='color' name='color'>
<input type='time' name='time' value='12:34'>

        </body>
    </html>
_END;
?>