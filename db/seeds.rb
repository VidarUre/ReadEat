# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t3 = Recipe.create(name: "Marinapus <3", rating: 9999, price: 9999, image: "https://scontent-amt2-1.xx.fbcdn.net/v/l/t1.0-9/12919892_970629209658455_5353347732531068074_n.jpg?oh=ab7ba2e1c0fea5d1280a705912da721d&oe=583612B2", minutes: 69, howto: "Bland sammen masse søtt og fint, og så får du en sånn :D")
     Ingredient.create(name: "Marina", amount: "1/2", recipe_id: t3.id)
     Ingredient.create(name: "Pus", amount: "1/2", recipe_id: t3.id)
