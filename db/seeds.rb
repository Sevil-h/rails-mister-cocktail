require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).read
ingredients = JSON.parse(file)['drinks']
ing = ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
end
