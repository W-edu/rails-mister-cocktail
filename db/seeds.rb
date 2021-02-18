require 'open-uri'
require 'json'

cocktails_url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

volumes = ["ounce", "shot", "dram", "thimble", "pinch", "sneeze", "bathtub", "handful", "wellington"]

ingredients = []
JSON.parse(open(cocktails_url).read)["drinks"].each{ |drink| ingredients << drink["strIngredient1"] }
p ingredients

puts "creating ingredients..."

ingredients.each{ |ingredient| Ingredient.create(name: ingredient) }
