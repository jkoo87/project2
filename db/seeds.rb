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
Category.create(food_catagory: "Desert", img_url: "category/desert.png")
Category.create(food_catagory: "Int'l", img_url: "category/international_food.png")
