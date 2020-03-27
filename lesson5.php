<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
$link = mysqli_connect("localhost", "root", "")
        or die ("Не удалось соединится с сервером");

mysqli_select_db($link, "chat")
        or die ("Не удалось выбрать БД");
if (!empty($_POST['name']) && !empty($_POST['text'])){
    (mysqli_query ($link,
    "INSERT INTO text Values(NULL, '$_POST[name]', '$_POST[text]')"));  
}

$query = "SELECT * FROM text";
$result = mysqli_query ($link, $query)
          or die ("Не удалось выполнить запрос");
    
echo "<table border='1'>\n";
while ($row = mysqli_fetch_array($result,MYSQLI_BOTH)){
    echo "<tr>";
    echo "<td>".$row[0]."</td>";
    echo "<td>".$row[1]."</td>";
    echo "<td>".$row[2]."</td>";
    echo "</tr>";
}
echo "</table>\n";

mysqli_free_result($result);

mysqli_close($link);
?>

<br>
<form action="?" method="POST">
<textarea name="text" cols="30" rows="10"></textarea><br>
<input type="text" name="name" ><br>
<input type="submit" value="Ok">
</form>



</body>
</html>
