<?php

ini_set('display_errors', 'On');
header('content-type: application/json; charset=utf-8');

const DB_HOST = 'localhost';
const DB_USER = 'root';
const DB_PASS = '';
const DB_NAME = 'gogreen';

$link = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if ($link->connect_error) { 
   die('Connect Error ('.$link->connect_errno.') '.$link->connect_error);
}
$link->set_charset('utf8'); 

//NY KODE

$sql = "SELECT * FROM butik";
$result = $link->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
	$svar = '{ "data": [';
    while($row = $result->fetch_assoc()) {
        //echo "id: " . $row["lat"]. " - Name: " . $row["lng"]. " " . "<br>";
		$svar .='{"id": ' . $row["id"] . ', "navn": "' . $row["navn"] . '", "info": "' . $row["info"] . '"},';
		
    }
	$svar = (substr($svar,-1) == ',') ? substr($svar, 0, -1) : $svar;
	$svar .=']}';
	echo $svar;
} else {
    echo "0 results";
}

?>