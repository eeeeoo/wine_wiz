# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# categories
red_meat = Category.create(name:'Red Meat', description: '(Beef, Lamb, Venison, etc.)')
cured_meat = Category.create(name:'Cured Meat', description: '(Salami, Proscuitto, Bresaola, Bacon, etc.)')
pork = Category.create(name:'Pork', description: '(Roast, Tenderloin, Pork Chop, etc.)')
poultry = Category.create(name:'Poultry', description: '(Chicken, Duck, Turkey, etc.)')
seafood = Category.create(name:'Seafish', description: '(Mollusk, Fish, Lobster, Shellfish, etc.)')
soft_cheese = Category.create(name:'Soft Cheese', description: '(Brie, Mascarpone, Crème Fraîche, etc.)')
hard_cheese = Category.create(name:'Hard Cheese', description: '(Cheddar, Pecorino, Manchego, Asiago, Parmesan, etc.)')
green_veg = Category.create(name:'Green Vegetables', description: '(Green Bean, Kale, Lettuce, etc.)')
starchy_veg = Category.create(name:'Starchy Vegetables', description: '(Potato, Corn, Carrot, Sweet Potato, etc.)')
color_veg = Category.create(name:'Red & Orange Vegetables', description: '(Tomato, Peppers, Eggplant, etc.)')
mushrooms = Category.create(name:'Mushrooms', description: '(Crimini, Portobello, Maitake, etc.)')
nuts_seeds = Category.create(name:'Nuts & Seeds', description: '(Peanut, Almond, Pecan, Sesame, etc.)')
carbs = Category.create(name:'White Starches', description: '(Flour, White Rice, Pasta, Bread, Tortillas, etc.)')
fruits = Category.create(name:'Fruit & Berries', description: '(Strawberry, Orange, Apple, Peach, etc.)')

#bold_reds - red meat, hard cheese,
syrah = Wine.create(name:'Syrah', group:'red', color:'Bold Red', body:'Full', tannin:'Medium High', acidity:'Medium High', flavors: 'Blackberry, Blueberry, Boysenberry, Olive, Mint, Chocolate, Vanilla, Tobacco')
mourvedre = Wine.create(name:'Mourvèdre', group:'red', color:'Bold Red', body:'Full', tannin:'High', acidity:'Medium High', flavors: 'Blueberry, Blackberry, Plum, Black Pepper, Violet, Rose, Smoke')
touriga = Wine.create(name:'Touriga Nacional', group:'red', color:'Bold Red', body:'Full', tannin:'High', acidity:'Medium High', flavors: 'Violet, Blueberry, Plum, Mint, Wet Slate')
carbernet = Wine.create(name:'Carbernet Sauvignon', group:'red', color:'Bold Red', body:'Full', tannin:'Medium High', acidity:'Medium High', flavors: 'Blackcherry, Black Currant, Blackberry, Blackberry, Tobacco, Licorice, Vanilla, Violet')
malbec = Wine.create(name:'Malbec', group:'red', color:'Bold Red', body:'Full', tannin:'Medium', acidity:'Medium', flavors: 'Black cherry, Pomengranate, Plum, Raspberry, Blackberry, Blueberry, Raisin, Cocoa, Molasses, Coffee')
petite_sirah = Wine.create(name:'Petite Sirah', group:'red', color:'Bold Red', body:'Full', tannin:'High', acidity:'Medium', flavors: 'Plum, Blueberry, Dark Chocolate, Black Pepper, Black Tea')

#medium_reds - pork, starchy veg, mushrooms,
merlot = Wine.create(name:'Merlot', group:'red', color:'Medium Red', body:'Full', tannin:'Medium', acidity:'Medium', flavors: 'Black Cherry, Raspberry, Plum, Graphite, Cedar, Tobacco, Vanilla, Clove, Mocha')
sangiovese = Wine.create(name:'Sangiovese', group:'red', color:'Medium Red', body:'Medium', tannin:'High', acidity:'High', flavors: 'Tart Cherry, Red Plum, Strawberry, Fig, Tomato, Leather, Clay, Brick, Tobacco, Smoke, Oregano')
tempranillo = Wine.create(name:'Tempranillo', group:'red', color:'Medium Red', body:'Medium', tannin:'Medium High', acidity:'Medium Low', flavors: 'Cherry, Plum, Tomato, Fig, Cedar, Leather, Tobacco, Vanilla, Dill, Clove')
franc = Wine.create(name:'Carbernet Franc', group:'red', color:'Medium Red', body:'Medium', tannin:'Medium High', acidity:'Medium High', flavors:'Strawberry, Roasted Pepper, Red Plum, Gravel, Chili Pepper')
zinfandel = Wine.create(name:'Zinfandel', group:'red', color:'Medium Red', body:'Full', tannin:'Medium High', acidity:'Medium High', flavors:'Raspberry, Black Cherry, Blackberry, Blueberry, Black Currant, Raisin, Fig, Apricot')

# light reds - cured meat, poultry, soft cheese, mushrooms
pinot_noir = Wine.create(name:'Pinot Noir', group:'red', color:'Light Red', body:'Medium', tannin:'Medium Low', acidity:'Medium High', flavors:'Cranberry, Cherry, Raspberry, Vanilla, Clove, Licorice, Mushroom, Wet Leaves')
grenache = Wine.create(name:'Grenache', group:'red', color:'Light Red', body:'Medium', tannin:'Medium', acidity:'Medium', flavors:'Strawberry, Black Cherry, Raspberry, Anise, Tobacco, Citrus Rind, Cinnamon')
gamay = Wine.create(name:'Gamay', group:'red', color:'Light Red', body:'Medium Low', tannin:'Low', acidity:'Medium High', flavors:'Black Currant, Raspberry, Violet, Potting Soil, Banana')
carignan = Wine.create(name:'Carignan', group:'red', color:'Light Red', body:'Medium', tannin:'Medium', acidity:'Medium High', flavors:'Dried Cranberry, Raspberry, Licorice, Baking Spices, Cured Meat')

# rich whites -poultry, seafood, soft cheese, mushrooms
# light whites - seafood, green vegetables
# sparkling - pork, seafood,
# sweet whites - cured meat, nuts&seeds, starchy veg, fruit & berries

#pairings
red_red_meat = Pairing.create([{wine:syrah, category:red_meat}, {wine:mourvedre, category:red_meat}, {wine:touriga, category:red_meat}, {wine:carbernet, category:red_meat},{wine:malbec, category:red_meat},{wine:petite_sirah, category:red_meat}])
red_hard_cheese = Pairing.create([{wine:syrah, category:hard_cheese}, {wine:mourvedre, category:hard_cheese}, {wine:touriga, category:hard_cheese}, {wine:carbernet, category:hard_cheese},{wine:malbec, category:hard_cheese},{wine:petite_sirah, category:red_meat}])

red_pork = Pairing.create([{wine:merlot, category:pork}, {wine:sangiovese, category:pork}, {wine:tempranillo, category:pork}, {wine:franc, category:pork},{wine:zinfandel, category:pork}])
red_starchy_veg = Pairing.create([{wine:merlot, category:starchy_veg}, {wine:sangiovese, category:starchy_veg}, {wine:tempranillo, category:starchy_veg}, {wine:franc, category:starchy_veg},{wine:zinfandel, category:starchy_veg}])
red_mushrooms = Pairing.create([{wine:merlot, category:mushrooms}, {wine:sangiovese, category:mushrooms},
  {wine:tempranillo, category:mushrooms}, {wine:franc, category:mushrooms},
  {wine:zinfandel, category:mushrooms}, {wine:pinot_noir, category:mushrooms},
  {wine:grenache, category:mushrooms}, {wine:gamay, category:mushrooms},
  {wine:carignan, category:mushrooms}])

red_cured_meat = Pairing.create([{wine:pinot_noir, category:cured_meat}, {wine:grenache, category:cured_meat}, {wine:gamay, category:cured_meat}, {wine:carignan, category:cured_meat}])
red_poultry = Pairing.create([{wine:pinot_noir, category:poultry}, {wine:grenache, category:poultry}, {wine:gamay, category:poultry}, {wine:carignan, category:poultry}])
red_soft_cheese = Pairing.create([{wine:pinot_noir, category:soft_cheese}, {wine:grenache, category:soft_cheese}, {wine:gamay, category:soft_cheese}, {wine:carignan, category:soft_cheese}])
