<?php
echo <<<_END
    <form method="post" action="Setting_default_values.php">
        <pre>
Loan Amount         <input type="text" name="principle">
Monthly Repayment   <input type="text" name="monthly">
Number of Years     <input type="text" name="years" value="25">
Interest Rate       <input type="text" name="rate" value="6">
                    <textarea name="textarea" cols="32" rows="8" wrap="off">
This is some default text.
                    </textarea>
I Agree             <input type="checkbox" name="agree" value="1">
Subscribe?          <input type="checkbox" name="news" checked="checked">
Vanilla             <input type="checkbox" name="ice" value="Vanilla">
Chocolate           <input type="checkbox" name="ice" value="Chocolate">
Strawberry          <input type="checkbox" name="ice" value="Strawberry">
<label>8am-Noon            <input type="radio" name="time" value="1"></label>
<label>Noon-4pm            <input type="radio" name="time" value="2" checked="checked"></label>
<label>4pm-8pm             <input type="radio" name="time" value="3"></label>
Vegetables          <select name="veg" size="5" multiple="multiple">
                        <option value="Peas">Peas</option>
                        <option value="Beans">Beans</option>
                        <option value="Carrots">Carrots</option>
                        <option value="Cabbage">Cabbage</option>
                        <option value="Broccoli">Broccoli</option>
                    </select>
                    <input type="hidden" name="submitted" value="yes">
                    <input type="submit">

        </pre>
    </form>
_END
?>
