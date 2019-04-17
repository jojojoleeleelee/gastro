# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username:'jojoleelee', password_digest:"1234", email:'jojo@jojo.com', uid:'1')
Ingredient.create(name:'chocolate', user_id:'1', quantity:'2 oz', purchase_date:'4/2/2019', expiration_date:'4/2/2020', favorite: true)