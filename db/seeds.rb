require 'open-uri'
require 'json'

Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
open = open(url).read
result = JSON.parse(open)

result['drinks'].each do |i|
  Ingredient.create(name: i["strIngredient1"])
end

puts "Create new ingredients"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "basil")
Ingredient.create(name: "thyme")
Ingredient.create(name: "celery salt")
Ingredient.create(name: "mint leaves")

puts "done"
