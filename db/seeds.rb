# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Category.destroy_all
User.destroy_all


Category.create(food_catagory: "Chicken", img_url: "category/chicken.png")
Category.create(food_catagory: "Beef", img_url: "category/cow.png")
Category.create(food_catagory: "Pork", img_url: "category/pig.png")
Category.create(food_catagory: "Seafood", img_url: "category/fish.png")
Category.create(food_catagory: "Grilling", img_url: "category/grilling.png")
Category.create(food_catagory: "Vegetarian", img_url: "category/no_meat.png")
Category.create(food_catagory: "Baked", img_url: "category/pizza.png")
Category.create(food_catagory: "Pasta", img_url: "category/pasta.png")
Category.create(food_catagory: "Burger", img_url: "category/burger.png")
Category.create(food_catagory: "Soup", img_url: "category/soup.png")
Category.create(food_catagory: "Dessert", img_url: "category/dessert.png")
Category.create(food_catagory: "Int'l Food", img_url: "category/international_food.png")

# I would like to have seen one or two Recipe records created by your seeds.
User.create( email: "user@email.com", password: "1234567" )

eggs = Recipe.new ({
    title: "Sunny Side Eggs",
    description: "Eggs pan fried without flipping",
    img_url: "http://www.incredibleegg.org/wp-content/themes/incredibleegg/assets/images/facts-left-egg.png",
    cooking_time: "5 min",
    cooking_level: "1",
    allow_reviews: true,
    user: User.first,
    categories: [
        Category.find_by({food_catagory: "Chicken"})
    ]
})
eggs.save
eggs.ingredients.create([
    { list: "Eggs" },
    { list: "Water" }
])
eggs.directions.create([
    {recipe_direction: "heat pan"},
    {recipe_direction: "crack egs, add 3 tbsp water, cover"},
    {recipe_direction: "cook 2 mins"},
    {recipe_direction: "serve immediately"}
])