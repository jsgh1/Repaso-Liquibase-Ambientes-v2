CREATE TABLE detalle_pedido (
    id_detalle BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_pedido BIGINT NOT NULL,
    id_producto BIGINT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_detalle_pedido_pedidos
        FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),

    CONSTRAINT fk_detalle_pedido_productos
        FOREIGN KEY (id_producto) REFERENCES productos(id_producto),

    CHECK (cantidad > 0),
    CHECK (precio_unitario >= 0),
    CHECK (subtotal >= 0)
);