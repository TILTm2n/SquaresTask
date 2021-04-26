CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id_categories`, `name`) VALUES
(1, 'Еда'),
(2, 'Одежда'),
(3, 'Гигиена');

CREATE TABLE `crossing` (
  `id_crossing` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `crossing` (`id_crossing`, `id_product`, `id_categorie`) VALUES
(1, 5, 2),
(2, 1, 2),
(3, 4, 2),
(4, 3, 2),
(5, 6, 1),
(6, 7, 1),
(7, 8, 3),
(8, 9, NULL);

CREATE TABLE `products` (
  `id_products` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id_products`, `name`) VALUES
(1, 'Носки'),
(3, 'Шапка'),
(4, 'Пальто'),
(5, 'Кросовки'),
(6, 'Шоколад'),
(7, 'Яблоки'),
(8, 'Шампунь'),
(9, 'Покрышки');

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

ALTER TABLE `crossing`
  ADD PRIMARY KEY (`id_crossing`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_categorie` (`id_categorie`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`);

ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `crossing`
  MODIFY `id_crossing` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `products`
  MODIFY `id_products` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `crossing`
  ADD CONSTRAINT `crossing_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_products`),
  ADD CONSTRAINT `crossing_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categories`);
COMMIT;

