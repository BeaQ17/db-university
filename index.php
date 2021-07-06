<?php

#1 definire costanti per la connessione
define("DB_SERVERNAME", "localhost");
define("DB_PORT", "3306");
define("DB_NAME", "db University");
define("DB_USERNAME", "root");
define("DB_PASSWORD", "root");

//var_dump(DB_NAME);

#2 stabilire connessione con il database
$connection = new mysqli(DB_SERVERNAME, DB_PORT, DB_NAME, DB_USERNAME, DB_PASSWORD);

//var_dump($connection);

#3 verificare connessione
if ($connection && $connection->connect_error) {
    echo "Connessione fallita: " . $connection->connect_error;
    die();
}
#4 eseguire query - se la connessione è stabilita
echo "Connessione riuscita"

#5 controllare che ci siano risultati da mostrare

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    
</body>
</html>