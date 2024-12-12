
CREATE TABLE usuarios (
    usu_id          int(11) AUTO_INCREMENT,
    usu_nombre      VARCHAR(100),
    usu_usuario     VARCHAR(50),
    usu_password    VARCHAR(255),
    usu_perfil      VARCHAR(50),
    usu_foto        TEXT,
    usu_estado      int(11),
    usu_ultimo_login datetime,
    usu_fecha_create timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usu_fecha_update datetime,
    usu_fecha_delete datetime,
    PRIMARY KEY (usu_id)
);

INSERT INTO usuarios (usu_id, usu_nombre, usu_usuario, usu_password, usu_perfil, usu_foto, usu_estado, usu_ultimo_login, usu_fecha_create, usu_fecha_update, usu_fecha_delete) VALUES
(1, 'Usuario Administrado', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/994.png', 1, '2024-11-16 16:58:29', '2024-11-16 21:58:30', NULL, NULL),
(2, 'Victor Cotrina', 'vcotrina', '$2a$07$asxx54ahjppf45sd87a5auaK2UuY9I3HoWrDp0X6p.3tlEWlvSpv.', 'Especial', 'vistas/img/usuarios/vcotrina/143.png', 1, '2024-11-17 15:13:44', '2024-11-17 20:13:44', NULL, NULL),
(3, 'Ramiro Cotrina', 'rcotrina', '$2a$07$asxx54ahjppf45sd87a5auSCG6EtWTOSpeybRK.d3z3BAMJt.7teO', 'Vendedor', 'vistas/img/usuarios/rcotrina/410.png', 1, '2024-11-16 17:30:44', '2024-11-16 22:36:47', NULL, NULL);

-- TABLA PROVEEDORES
CREATE TABLE proveedores (
    prove_id int(11) AUTO_INCREMENT,
    prove_ruc VARCHAR(20),
    prove_razon_social VARCHAR(200),
    prove_nombre_comercial VARCHAR(200),
    prove_email VARCHAR(200),
    prove_telefono VARCHAR(20),
    prove_direccion VARCHAR(200),   
    prove_fecha_create timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    prove_fecha_update datetime,
    prove_fecha_delete datetime,
    PRIMARY KEY (prove_id) 
);


-- TABLA CATEGORIAS

CREATE TABLE categorias (
    cat_id int(11) AUTO_INCREMENT,
    cat_categoria VARCHAR(200),  
    cat_fecha_create timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    cat_fecha_update datetime,
    cat_fecha_delete datetime,
    PRIMARY KEY (cat_id)
);



-- TABLA PRODUCTOS

CREATE TABLE productos (
    pro_id int(11) AUTO_INCREMENT,
    pro_id_categoria int(11),
    pro_id_proveedor int(11),
    pro_codigo VARCHAR(200),
    pro_descripcion VARCHAR(200),
    pro_imagen TEXT,
    pro_stock int(11),
    pro_precio_compra float,
    pro_precio_venta float,
    pro_ventas int(11),    
    pro_fecha_create timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    pro_fecha_update datetime,
    pro_fecha_delete datetime,
    PRIMARY KEY (pro_id), 
    FOREIGN KEY (pro_id_categoria) REFERENCES categorias(cat_id),
    FOREIGN KEY (pro_id_proveedor) REFERENCES proveedores(prove_id)
);


-- TABLA CLEINTES

CREATE TABLE clientes (
    cli_id int(11) AUTO_INCREMENT,
    cli_nombre VARCHAR(200),
    cli_documento int(11),
    cli_email VARCHAR(200),
    cli_telefono VARCHAR(20),
    cli_direccion VARCHAR(200),
    cli_fecha_nacimiento date,
    cli_compras int(11),
    cli_ultima_compra datetime,    
    cli_fecha_create timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    cli_fecha_update datetime,
    cli_fecha_delete datetime,
    PRIMARY KEY (cli_id) 
);


-- TABLA VENTAS

CREATE TABLE ventas (
    ven_id int(11) AUTO_INCREMENT,
    ven_codigo int(11),
    ven_id_cliente int(11),
    ven_id_vendedor int(11),
    ven_productos text,
    ven_impuesto float,
    ven_neto float,
    ven_total float,
    ven_metodo_pago VARCHAR(200),   
    ven_fecha_create timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ven_fecha_update datetime,
    ven_fecha_delete datetime,
    PRIMARY KEY (ven_id),    
    FOREIGN KEY (ven_id_cliente) REFERENCES clientes(cli_id),
    FOREIGN KEY (ven_id_vendedor) REFERENCES usuarios(usu_id)
);



-- INSERCIONES

INSERT INTO `categorias` (`cat_id`, `cat_categoria`, `cat_fecha_create`, `cat_fecha_update`, `cat_fecha_delete`) VALUES
(1, 'Gaseosas', '2024-12-04 22:05:05', NULL, NULL),
(2, 'Bebidas', '2024-12-04 22:16:33', '2023-12-01 10:00:00', NULL),
(3, 'Snacks', '2024-12-04 22:16:33', '2023-12-02 14:45:00', NULL),
(4, 'Abarrotes', '2024-12-04 22:16:33', '2023-12-03 09:30:00', NULL),
(5, 'Lácteos', '2024-12-04 22:16:33', '2023-12-04 08:00:00', NULL);


INSERT INTO `proveedores` (`prove_id`, `prove_ruc`, `prove_razon_social`, `prove_nombre_comercial`, `prove_email`, `prove_telefono`, `prove_direccion`, `prove_fecha_create`, `prove_fecha_update`, `prove_fecha_delete`) VALUES
(1, '12345678901', 'Distribuidora ABC S.A.', 'ABC Distribuciones', 'contacto@abc.com', '987654321', 'Av. Principal 123, Lima', '2024-12-04 22:16:10', '2023-12-01 12:00:00', NULL),
(2, '09876543210', 'Importadora XYZ S.A.', 'XYZ Importaciones', 'ventas@xyz.com', '912345678', 'Calle Secundaria 456, Arequipa', '2024-12-04 22:16:10', '2023-12-02 15:30:00', NULL),
(3, '11223344556', 'Alimentos Perú S.A.C.', 'AP Distribución', 'alimentos@peru.com', '934567890', 'Jr. Las Flores 789, Cusco', '2024-12-04 22:16:10', '2023-12-03 10:00:00', NULL);






