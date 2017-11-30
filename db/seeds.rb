Spot.destroy_all
Place.destroy_all
Category.destroy_all



bar = Category.create!(name: "Bar", slug: "bar")
resto = Category.create!(name: "Restaurant", slug: "restaurant")
art = Category.create!(name: "Art", slug: "museum")



tapasserie = Place.create!(name: "La Tapasserie", category: bar, address: "7 Rue Rode, 33000")
zytho = Place.create!(name: "Le Zytho", category: bar, address: "28 Rue Latour, 33000 Bordeaux")
apollo = Place.create!(name: "L'Apollo", category: bar, address: "19 Place Fernand Lafargue, 33000")
# alriq = Place.create!(name: "La Guinguette Chez Alriq", category: bar, address: "ZA Quai des Queyries, Port Bastide, 33100 Bordeaux")

# office = Place.create!(name: "Office", category: bar, address: "Yamazaki Bldg 5F, 2-7-18 Kita-Aoyama, Minato-ku")


pastel = Place.create!(name: "Pastel", category: resto, address: "2 Quai des Chartrons 33300")
bocca = Place.create!(name: "Epicerie la Bocca", category: resto, address: "75 Rue Notre Dame, 33000")
boucher = Place.create!(name: "Le Boucher", category: resto, address: "35 Rue Borie, 33300")
finger = Place.create!(name: "Finger Food", category: resto, address: "105 Quai des Chartrons, 33300")
fufu = Place.create!(name: "Fufu cours Portal", category: resto, address: "71 Cours Portal, 33300")
# pheno = Place.create!(name: "Les Phénomènes", category: resto, address: "34 Cours du Médoc, 33300 ")
# miles = Place.create!(name: "Miles", category: resto, address: "33, rue du Cancera, 33300 ")

# road = Place.create!(name: "Star Road", category: resto, address: "Grand Nikko Tokyo Daiba, Japon")

capc = Place.create!(name: "CAPC musée d'art contemporain de Bordeaux", category: art, address: "7 Rue Ferrere, 33000 ")
# amy = Place.create!(name: "Amy Gallery Art et Artisanat", category: art, address: "7 Place de la Ferme Richemont, 33000 Bordeaux")
