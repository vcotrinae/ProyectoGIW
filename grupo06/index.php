<?php

require_once __DIR__ . "../controladores/plantilla.controlador.php";
require_once __DIR__ . "../controladores/usuarios.controlador.php";
require_once __DIR__ . "../controladores/categorias.controlador.php";
require_once __DIR__ . "../controladores/productos.controlador.php";
require_once __DIR__ . "../controladores/proveedores.controlador.php";
require_once __DIR__ . "../controladores/clientes.controlador.php";
require_once __DIR__ . "../controladores/ventas.controlador.php";



require_once __DIR__ . "../modelos/usuarios.modelo.php";
require_once __DIR__ . "../modelos/categorias.modelo.php";
require_once __DIR__ . "../modelos/productos.modelo.php";
require_once __DIR__ . "../modelos/proveedores.modelo.php";
require_once __DIR__ . "../modelos/clientes.modelo.php";
require_once __DIR__ . "../modelos/ventas.modelo.php";



$plantilla = new ControladorPlantilla();
$plantilla ->cargarPlantilla();


