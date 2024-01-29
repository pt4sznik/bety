<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bety</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <h1>bety</h1>  
    <div class="bety">
        <table border="1">kupony
            <tr>
                <th>id beta</th>
                <th>kogo</th>
                <th>kwota</th>
                <th>wygrana</th>
                <th>data</th>
            </tr>
            <?php
            $server='127.0.0.1';
            $user='root';
            $haslo='';
            $baza='bety';
            $db = mysqli_connect($server,$user,$haslo,$baza);


$query = "SELECT `IDbety`,`kogo`,`kwota`,`wygrana`,`data` FROM `bety`.`bety` ";
$result = mysqli_query ($db,$query);
if ($result) 
{
    while ($row = mysqli_fetch_array ($result))
    {
        echo "<tr>";
        echo "<td>".$row['IDbety']."</td>";
        echo "<td>".$row['kogo']."</td>";
        echo "<td>".$row['kwota']."</td>";
        echo "<td>".$row['wygrana']."</td>";
        echo "<td>".$row['data']."</td>";
        echo "</tr>";
    }
}
else
{
   echo "brak danych";
}
mysqli_close($db)

            ?>
        
    </div>

    <div class="portfel">
        <table border="1">portfel
            <tr>
                <th>ptasznik</th>
                <th>damper</th>
            </tr>
            <?php
            $server='127.0.0.1';
            $user='root';
            $haslo='';
            $baza='bety';
            $db = mysqli_connect($server,$user,$haslo,$baza);


$query = "SELECT `ptasznik`,`damper` FROM `bety`.`portfel` ";
$result = mysqli_query ($db,$query);
if ($result) 
{
    while ($row = mysqli_fetch_array ($result))
    {
        echo "<tr>";
        echo "<td>".$row['ptasznik']."</td>";
        echo "<td>".$row['damper']."</td>";
        echo "</tr>";
    }
}
else
{
   echo "brak danych";
}
mysqli_close($db)

            ?>


    </div>
</body>
</html>