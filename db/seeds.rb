Spot.destroy_all
Place.destroy_all
Category.destroy_all



bar = Category.create!(name: "Bar", slug: "bar")
resto = Category.create!(name: "Restaurant", slug: "restaurant")
art = Category.create!(name: "Art", slug: "museum")



tapasserie = Place.create!(name: "La Tapasserie", category: bar, address: "7 Rue Rode, 33000")
zytho = Place.create!(name: "Le Zytho", category: bar, address: "28 Rue Latour, 33000 Bordeaux")
apollo = Place.create!(name: "L'Apollo", category: bar, address: "19 Place Fernand Lafargue, 33000")

pastel = Place.create!(name: "Pastel", category: resto, address: "2 Quai des Chartrons 33300")
bocca = Place.create!(name: "Epicerie la Bocca", category: resto, address: "75 Rue Notre Dame, 33000")
boucher = Place.create!(name: "Le Boucher", category: resto, address: "35 Rue Borie, 33300")
finger = Place.create!(name: "Finger Food", category: resto, address: "105 Quai des Chartrons, 33300")
fufu = Place.create!(name: "Fufu cours Portal", category: resto, address: "71 Cours Portal, 33300")
pheno = Place.create!(name: "Les Phénomènes", category: resto, address: "34 Cours du Médoc, 33300 ")

capc = Place.create!(name: "CAPC musée d'art contemporain de Bordeaux", category: art, address: "7 Rue Ferrere, 33000 ")
