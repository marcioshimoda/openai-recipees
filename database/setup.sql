CREATE TABLE IF NOT EXISTS `food` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_type` int unsigned NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE='InnoDB' DEFAULT CHARSET=latin1;

/* Carboidratos */
INSERT INTO `food`(id_type, name) VALUES (0, 'Arroz branco'), (0, 'Macarrão'), (0, 'Mandioca'), (0, 'Milho verde');

/* Leguminosas */
INSERT INTO `food`(id_type, name) VALUES (1, 'Feijão'), (1, 'Ervilha'), (1, 'Lentilha');

/* Proteina */
INSERT INTO `food`(id_type, name) VALUES (2, 'Alcatra'), (2, 'Coxão mole'), (2, 'Patinho'), (2, 'File mignon'), (2, 'Peito de frango'), (2, 'Salmão'), (2, 'Atum'), (2, 'Cavala'), (2, 'Arenque'), (2, 'Tilapia'), (2, 'Merluza'), (2, 'Cação'), (2, 'Linguado');

/* Legumes */
INSERT INTO `food`(id_type, name) VALUES (3, 'Abobrinha'), (3, 'Alcachofra'), (3, 'Aspargo'), (3, 'Beterraba'), (3, 'Berinjela'), (3, 'Brócolis'), (3, 'Cenoura'), (3, 'Chuchu'), (3, 'Couve-flor'), (3, 'Pimentão'), (3, 'Quiabo');

/* Hortaliças */
INSERT INTO `food`(id_type, name) VALUES (4, 'Acelga'), (4, 'Agrião'), (4, 'Alface'), (4, 'Almeirão'), (4, 'Cebola'), (4, 'Chicória'), (4, 'Couve'), (4, 'Pepino'), (4, 'Rabanete'), (4, 'Repolho'), (4, 'Salsa'), (4, 'Seralha'), (4, 'Tomate');

/* Temperos */
INSERT INTO `food`(id_type, name) VALUES (5, 'Alecrim'), (5, 'Alho'), (5, 'Anis'), (5, 'Canela'), (5, 'Cebola'), (5, 'Cebolinha'), (5, 'Cravo da índia'), (5, 'Colorau'), (5, 'Cominho'), (5, 'Curry'), (5, 'Gengibre'), (5, 'Hortelã'), (5, 'Limão'), (5, 'Louro'), (5, 'Manjerona'), (5, 'Manjericão'), (5, 'Mostarda'), (5, 'Noz moscada'), (5, 'Orégano'), (5, 'Páprica'), (5, 'Pimenta'), (5, 'Salsinha'), (5, 'Sálvia'), (5, 'Tominho'), (5, 'Vinagre');
