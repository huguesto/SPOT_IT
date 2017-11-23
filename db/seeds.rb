Place.destroy_all
Category.destroy_all


bar = Category.create!(name: "Bar")
resto = Category.create!(name: "Restaurant")
art = Category.create!(name: "Art")

wagon = Place.create!(name: "Le Wagon Bordeaux", category: bar, address: "107 cours Balguerie Stuttenberg 33300")
pizza_nico = Place.create!(name: "Pizz'a Nico", category: art, address: "108 cours Balguerie Stuttenberg 33300")
# pastel = Place.create!(name: "Pastel", category: resto, address: "2 Quai des Chartrons 33300")
yamato = Place.create!(name: "Yamato", category: resto, address: "20 Allée du 7ème art 33400 Talence")
