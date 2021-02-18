require 'open-uri'
require 'json'

cocktails_url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

ingredients = JSON.parse(open(cocktails_url).read)

ingredients["drinks"].each{ |drink| Ingredient.create(name: drink["strIngredient1"]) }
