# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Micropost.create!(content: "test1", user_id: 1)
Micropost.create!(content: "test2", user_id: 2)
User.create!(name: "アラジン", email: "Aladdin@hoge.com", password: "aladdin")
Like.create!(user_id: 1, micropost_id: 1)
Like.create!(user_id: 2, micropost_id: 2)