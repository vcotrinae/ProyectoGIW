<?php

class Conexion{

	static public function conectar(){
        $server = "localhost";
        $user = "root";
        $password = "";
        //$database = "bdestelista"; 
        $database = "bdestelista2"; 

		$link = new PDO("mysql:host=$server;dbname=$database", $user, $password);
		$link->exec("set names utf8");
		return $link;
	}
}