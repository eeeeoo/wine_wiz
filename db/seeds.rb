# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Category.delete_all
Wine.delete_all
Pairing.delete_all
# categories
red_meat = Category.create(name:'Red Meat', description: '(Beef, Lamb, Venison, etc.)')
cured_meat = Category.create(name:'Cured Meat', description: '(Salami, Proscuitto, Bresaola, Bacon, etc.)')
pork = Category.create(name:'Pork', description: '(Roast, Tenderloin, Pork Chop, etc.)')
poultry = Category.create(name:'Poultry', description: '(Chicken, Duck, Turkey, etc.)')
seafood = Category.create(name:'Seafood', description: '(Mollusk, Fish, Lobster, Shellfish, etc.)')
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
syrah = Wine.create(name:'Syrah', group:'red', color:'Bold Red', body:'Full', tannin:'Medium', acidity:'Medium', flavors: 'Blackberry, Blueberry, Boysenberry, Olive, Mint, Chocolate, Vanilla, Tobacco')
mourvedre = Wine.create(name:'Mourvèdre', group:'red', color:'Bold Red', body:'Full', tannin:'High', acidity:'Medium', flavors: 'Blueberry, Blackberry, Plum, Black Pepper, Violet, Rose, Smoke')
touriga = Wine.create(name:'Touriga Nacional', group:'red', color:'Bold Red', body:'Full', tannin:'High', acidity:'Medium', flavors: 'Violet, Blueberry, Plum, Mint, Wet Slate')
carbernet = Wine.create(name:'Carbernet Sauvignon', group:'red', color:'Bold Red', body:'Full', tannin:'Medium', acidity:'Medium', flavors: 'Blackcherry, Black Currant, Blackberry, Blackberry, Tobacco, Licorice, Vanilla, Violet')
malbec = Wine.create(name:'Malbec', group:'red', color:'Bold Red', body:'Full', tannin:'Medium', acidity:'Medium', flavors: 'Black cherry, Pomengranate, Plum, Raspberry, Blackberry, Blueberry, Raisin, Cocoa, Molasses, Coffee')
petite_sirah = Wine.create(name:'Petite Sirah', group:'red', color:'Bold Red', body:'Full', tannin:'High', acidity:'Medium', flavors: 'Plum, Blueberry, Dark Chocolate, Black Pepper, Black Tea')

#medium_reds - pork, starchy veg, mushrooms,
merlot = Wine.create(name:'Merlot', group:'red', color:'Medium Red', body:'Full', tannin:'Medium', acidity:'Medium', flavors: 'Black Cherry, Raspberry, Plum, Graphite, Cedar, Tobacco, Vanilla, Clove, Mocha')
sangiovese = Wine.create(name:'Sangiovese', group:'red', color:'Medium Red', body:'Medium', tannin:'High', acidity:'High', flavors: 'Tart Cherry, Red Plum, Strawberry, Fig, Tomato, Leather, Clay, Brick, Tobacco, Smoke, Oregano')
tempranillo = Wine.create(name:'Tempranillo', group:'red', color:'Medium Red', body:'Medium', tannin:'Medium', acidity:'Medium', flavors: 'Cherry, Plum, Tomato, Fig, Cedar, Leather, Tobacco, Vanilla, Dill, Clove')
franc = Wine.create(name:'Carbernet Franc', group:'red', color:'Medium Red', body:'Medium', tannin:'Medium', acidity:'Medium', flavors:'Strawberry, Roasted Pepper, Red Plum, Gravel, Chili Pepper')
zinfandel = Wine.create(name:'Zinfandel', group:'red', color:'Medium Red', body:'Full', tannin:'Medium', acidity:'Medium', flavors:'Raspberry, Black Cherry, Blackberry, Blueberry, Black Currant, Raisin, Fig, Apricot')

# light reds - cured meat, poultry, soft cheese, mushrooms
pinot_noir = Wine.create(name:'Pinot Noir', group:'red', color:'Light Red', body:'Medium', tannin:'Medium', acidity:'Medium', flavors:'Cranberry, Cherry, Raspberry, Vanilla, Clove, Licorice, Mushroom, Wet Leaves')
grenache = Wine.create(name:'Grenache', group:'red', color:'Light Red', body:'Medium', tannin:'Medium', acidity:'Medium', flavors:'Strawberry, Black Cherry, Raspberry, Anise, Tobacco, Citrus Rind, Cinnamon')
gamay = Wine.create(name:'Gamay', group:'red', color:'Light Red', body:'Medium', tannin:'Low', acidity:'Medium', flavors:'Black Currant, Raspberry, Violet, Potting Soil, Banana')
carignan = Wine.create(name:'Carignan', group:'red', color:'Light Red', body:'Medium', tannin:'Medium', acidity:'Medium', flavors:'Dried Cranberry, Raspberry, Licorice, Baking Spices, Cured Meat')

# rich whites -poultry, seafood, soft cheese, mushrooms

chardonnay = Wine.create(name: 'Chardonnay', group: 'white', color: 'Rich White', body: 'Full', tannin: 'Low', acidity: 'Medium', flavors: 'Lemon, Apple, Pear, Pineapple, Jackfruit, Passionfruit, Peach, Fig, Honeysuckle, Vanilla Bean, Almond, Jasmine')
semillon = Wine.create(name: 'Sémillon', group: 'white', color: 'Rich White', body: 'Full', tannin: 'Low', acidity: 'Medium', flavors: 'Lemon, Lime, Yellow Grapefruit, Citrus Zest, Apple, Pear, Green Papaya, Peach, Mango, Honeysuckle, Fig, Honey, Ginger')
viognier = Wine.create(name: 'Viognier', group: 'white', color: 'Rich White', body: 'Medium', tannin: 'Low', acidity: 'Medium', flavors: 'Tengerine, Peach, Mango, Honeysuckle, Rose, Vanilla')
marsanne = Wine.create(name: 'Marsanne', group: 'white', color: 'Rich White', body: 'Full', tannin: 'Low', acidity: 'Low', flavors: 'Roasted Nuts, Pears, White Peaches, Honeydew Melon, Spice, Dried Apricot, Brioche')
roussanne = Wine.create(name: 'Roussanne', group: 'white', color: 'Rich White', body: 'Full', tannin: 'Low', acidity: 'Medium', flavors: 'Peach, Pear, Honeysuckle, Tea, Honey, Roasted Nuts, Vanilla, Fennel')

# light whites - seafood, green vegetables

sauvignon_blanc = Wine.create(name: 'Sauvignon Blanc', group: 'white', color: 'Light White', body: 'Medium', tannin: 'Low', acidity: 'High', flavors: 'Lime, Green Apple, Asian Pear, Kiwi, Passion Fruit, Guava, White Peach, Nectarine, Basil, Celery, Lemongrass, Vanilla, Butter')
pinot_blanc = Wine.create(name: 'Pinot Noir Blanc', group: 'white', color: 'Light White', body: 'Light', tannin: 'Low', acidity: 'Medium', flavors: 'Baked Apple, Pear, Lemon & Orange Zest, Honey, Ginger, Almond')
pinot_grigio = Wine.create(name: 'Pinot Grigio', group: 'white', color: 'Light White', body: 'Medium', tannin: 'Low', acidity: 'High', flavors: 'Lime, Green Apple, Lemon, Meyer Lemon, Pear, White Nectarine, White Peach, Almond, Honeysuckle, Clove, Ginger, Spice')
vermentino = Wine.create(name: 'Vermentino', group: 'white', color: 'Light White', body: 'Light', tannin: 'Low', acidity: 'Medium', flavors: 'Lime, Grapefruit, Green Apple, Almond, Citrus Zest, Daffodil')
trebbiano = Wine.create(name: 'Trebbiano', group: 'white', color: 'Light White', body: 'Light', tannin: 'Low', acidity: 'High', flavors: 'Neutral, Lemon, Minerals')

# sparkling - pork, seafood,

prosecco = Wine.create(name: 'Prosecco', group: 'white', color: 'Sparkling White', body: 'Light', tannin: 'Low', acidity: 'High', flavors: 'Green Apple, Honeydew Melon, Pear, Honeysuckle')
cava = Wine.create(name: 'Cava', group: 'white', color: 'Light White', body: 'Medium', tannin: 'Low', acidity: 'High', flavors: 'Citrus Zest, Apple, Toasted Nuts, Bergamot, Chamomile')

# sweet whites - cured meat, nuts&seeds, starchy veg, fruit & berries

moscato = Wine.create(name: 'Moscato', group: 'white', color: 'Sweet White', body: 'Light', tannin: 'Low', acidity: 'High', flavors: 'Meyer Lemon, Mandarin Orange, Pear, Orange Blossom, Honeysuckle')
riesling = Wine.create(name: 'Riesling', group: 'white', color: 'Sweet White', body: 'Light', tannin: 'Low', acidity: 'High', flavors: 'Nectarine, Apricot, Honey-Crisp Apple, Pear, Honeycomb, Jasmine, Lime Peel')
chenin_blanc = Wine.create(name: 'Chenin Blanc', group: 'white', color: 'Sweet White', body: 'Medium', tannin: 'Low', acidity: 'Medium', flavors: 'Pear, Baked Apple, Passion Fruit, Lime, Peach, Ginger, Honeysuckle, Jasmine, Chamomile')
gewurtztraminer = Wine.create(name: 'Gewürtztraminer', group: 'white', color: 'Sweet White', body: 'Medium', tannin: 'Low', acidity: 'Medium', flavors: 'Lychee, Grapefruit, Pineapple, Peach, Apricot, Orange, Cantaloupe, Rose, Honey, Ginger, Incense, Allspice, Cinnamon, Smoke')

#pairings

# red wines

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

# white wines
white_red_meat = Pairing.create([{wine:moscato, category:red_meat}, {wine:riesling, category:red_meat}, {wine:chenin_blanc, category:red_meat}, {wine:gewurtztraminer, category:red_meat}])
white_cured_meat = Pairing.create([{wine:moscato, category:cured_meat}, {wine:riesling, category:cured_meat}, {wine:chenin_blanc, category:cured_meat}, {wine:gewurtztraminer, category:cured_meat}, {category: cured_meat, wine: prosecco}, {category: cured_meat, wine: cava}])

white_pork = Pairing.create([{category: pork, wine: prosecco}, {category: pork, wine: cava}])
white_hard_cheese = Pairing.create([{category: hard_cheese, wine: prosecco}, {category: hard_cheese, wine: cava}])

white_green_veg = Pairing.create([{category: green_veg, wine: sauvignon_blanc}, {category: green_veg, wine: pinot_blanc}, {category: green_veg, wine: vermentino}, {category: green_veg, wine: trebbiano}, {category: green_veg, wine: pinot_grigio}, {category: green_veg, wine: prosecco}, {category: green_veg, wine: cava}])

white_seafood = Pairing.create([{category: seafood, wine: chardonnay}, {category: seafood, wine: viognier}, {category: seafood, wine: sauvignon_blanc}, {category: seafood, wine: pinot_grigio}, {category: seafood, wine: sauvignon_blanc}, {category: seafood, wine: pinot_blanc}, {category: seafood, wine: vermentino}, {category: seafood, wine: trebbiano}, {category: seafood, wine: pinot_grigio},{category: seafood, wine: prosecco}, {category: seafood, wine: cava}])

white_poultry = Pairing.create([{category: poultry, wine: chardonnay}, {category: poultry, wine: semillon}, {category: poultry, wine: viognier}, {category: poultry, wine: marsanne}, {category: poultry, wine: roussanne}])
white_starchy_veg = Pairing.create([{category: starchy_veg, wine: chardonnay}, {category: starchy_veg, wine: semillon}, {category: starchy_veg, wine: viognier}, {category: starchy_veg, wine: marsanne}, {category: starchy_veg, wine: roussanne}])
white_mushrooms = Pairing.create([{wine:chardonnay, category:mushrooms},{wine:semillon, category:mushrooms},{wine:viognier, category:mushrooms},{wine:marsanne, category:mushrooms},{wine:roussanne, category:mushrooms}])
white_soft_cheese = Pairing.create([{category: soft_cheese, wine: chardonnay}, {category: soft_cheese, wine: semillon}, {category: soft_cheese, wine: viognier}, {category: soft_cheese, wine: marsanne}, {category: soft_cheese, wine: roussanne}])

white_color_veg= Pairing.create([{wine:moscato, category:color_veg},{wine:riesling, category:color_veg},{wine:chenin_blanc, category:color_veg},{wine:gewurtztraminer, category:color_veg}])
white_nuts_seeds = Pairing.create([{wine:moscato, category:nuts_seeds},{wine:riesling, category:nuts_seeds},{wine:chenin_blanc, category:nuts_seeds},{wine:gewurtztraminer, category:nuts_seeds}])
white_carbs = Pairing.create([{wine:moscato, category:carbs},{wine:riesling, category:carbs},{wine:chenin_blanc, category:carbs},{wine:gewurtztraminer, category:carbs}])
white_fruits = Pairing.create([{wine:moscato, category:fruits},{wine:riesling, category:fruits},{wine:chenin_blanc, category:fruits},{wine:gewurtztraminer, category:fruits}])
