CREATE TABLE `menu` (
  `idmenu` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(600) NOT NULL,
  `ingredients` varchar(100) NOT NULL,
  `allergens` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sold` int NOT NULL,
  PRIMARY KEY (`idmenu`),
  UNIQUE KEY `idmenu_UNIQUE` (`idmenu`)
);



INSERT INTO menu(idmenu, name, image, description, ingredients, allergens, price, sold)
VALUES 
('VQ236464','Sopaipillas con Pebre', 'src\assets\Images\sopaipilla.png',
 "Sopaipillas con Pebre offers a regal combination of warm, golden sopaipillas and a vibrant salsa. The crispness of the sopaipillas paired with the zesty pebre creates a delightfully royal snack.",
"sopaipillas, pebre salsa (tomatoes, onions, cilantro, garlic, spices)", "gluten (from sopaipillas)", 7, 0),
('VQ232343', "Vegan Queen's Royale Completo",'src\assets\Images\completo2.jpg', 
"Experience the regal pleasure of a Vegan Completo, a culinary masterpiece where compassion meets excellence. This plant-based delight features a soft bun, savory plant-based sausage, creamy avocado spread, tangy mayo, juicy tomato slices, zesty ketchup, and a delightful sauerkraut crunch. Indulge in the symphony of flavors, fit for royalty.",
"avocado, vegan sausage, mayonnaise or vegannaise, tomato, ketchup, sauerkraut","soy (tofu or tempeh)", 8, 0),
('VQ237376','Our mouthwatering Chacarero','src\assets\Images\sopaipilla.png',
 "Indulging in a Vegan Chacarero is embarking on a regal journey of flavors. Grilled vegetables, seasoned tofu or tempeh, greens, vegan mayo, and homemade salsa elevate this sandwich to greatness.",
"grilled vegetables, seasoned tofu or tempeh, greens, vegan mayo, homemade salsa","soy (if using tofu or tempeh)", 11, 0);


