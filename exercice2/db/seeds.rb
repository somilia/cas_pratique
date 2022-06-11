# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
user1  = User.create(first_name: "Jean", last_name: "Dupond",
                     email: "jean.dupond@gmail.com", phone: "0102040506")


user2  = User.create(first_name: "Toto", last_name: "Jean",
                     email: "toto.jean@gmail.com", phone: "0102040506")


user3  = User.create(first_name: "Michel", last_name: "Dupond",
                     email: "michel.dupond@gmail.com", phone: "0102040506")