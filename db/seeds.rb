require 'faker'

puts "data destroyed"
Ingredient.destroy_all
IngredientCategory.destroy_all
Shop.destroy_all
Tag.destroy_all

puts "creating shops"
shop1 = Shop.create(name: "Biocoop", address: "68 rue Waldeck Rousseau, Lyon")
shop2 = Shop.create(name: "Ma ferme en ville", address: "112 rue de Sèze, Lyon")
shop3 = Shop.create(name: "Boucherie traiteur Vessiere", address: "53 rue Tête d'Or, Lyon")
shop4 = Shop.create(name: "Spar", address: "140 avenue Thiers, Lyon")

puts "create categories"
category1 = IngredientCategory.create(name: "Fruits et légumes", shop: shop2, image: "fruits.jpg")
category2 = IngredientCategory.create(name: "Viandes", shop: shop3, image: "meat.jpg")
category3 = IngredientCategory.create(name: "Vrac", shop: shop1, image: "vrac.jpg")
category4 = IngredientCategory.create(name: "conserves", shop: shop1, image: "canned.jpg")
category5 = IngredientCategory.create(name: "divers", shop: shop4, image: "caddie.jpg")
category6 = IngredientCategory.create(name: "à renseigner", shop: shop4, image: "caddie.jpg")

puts "create tags"
tags = %w(Végé Vegan Entrée Plat Dessert Apéritif Boisson Salade Soupe)
tags.each do |tag|
  Tag.create(name: tag)
end

