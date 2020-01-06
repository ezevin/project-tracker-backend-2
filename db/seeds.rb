# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


#Users
bob = User.create(username: "Bob", name: "Bob", password_digest: 'wow', profile_picture: "https://s3.reutersmedia.net/resources/r/?d=20190502&i=RCV006O97&w=&r=RCV006O97&t=2", age: 22, about_me: Faker::Movies::BackToTheFuture.quote)
jim = User.create(username: "Jim", name: "Jim", password_digest: 'wow', profile_picture: "https://upload.wikimedia.org/wikipedia/commons/3/3e/A_butterfly_feeding_on_the_tears_of_a_turtle_in_Ecuador.jpg", age: 33, about_me: Faker::Movies::BackToTheFuture.quote)
sally = User.create(username: "Sally", name: "Sally", password_digest: "wow", profile_picture: "https://cdn.pixabay.com/photo/2017/07/28/23/34/fantasy-picture-2550222_960_720.jpg", age: 25, about_me: Faker::Movies::BackToTheFuture.quote)
abby = User.create(username: "Abby", name: "Abby", password_digest: "wow", profile_picture: "https://oldmooresalmanac.com/wp-content/uploads/2013/04/fantasy-3281795_960_720.jpg", age: 29, about_me: Faker::Movies::BackToTheFuture.quote)
dan = User.create(username: "Dan", name: "Dan", password_digest: "wow", profile_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzIMccW3XbNmH8Jg-CbwDSk-8Z_BtyrNdQdwe3rSg7O2qRgaz7", age: 40, about_me: Faker::Movies::BackToTheFuture.quote)

#Projects
knit = Project.create(user_id: 1, title: "Knitting", budget: 100, details: Faker::Movies::PrincessBride.quote, finished_image: "http://www.ifabpartners.com/wp-content/uploads/2015/12/IFAB_services_integrated_project_MAIN1.jpg")
sew = Project.create(user_id: 2, title: "Sewing", budget: 100, details: Faker::Movies::PrincessBride.quote, finished_image: "https://3ozxuk3equ8uk744atar6415-wpengine.netdna-ssl.com/wp-content/uploads/2018/02/project-timeline.jpg")
table = Project.create(user_id: 3, title: "Table", budget: 100, details: Faker::Movies::PrincessBride.quote, finished_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUz8VGgqsLHNDpSQ0OIiS1hFh19-50XtU8kwPXmG9QNE2LZDtqWQ")

#Materials
needles = Material.create(label: "Needles", price: 5, quantity: 4, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/kids-string-card-1524848870.jpg?crop=1.00xw:0.667xh;0,0.0874xh&resize=480:*", place_purchased: "Michael's", description: Faker::TvShows::HowIMetYourMother.quote)
yard = Material.create(label: "Yarn", price: 15, quantity: 2, image_url: "https://i.pinimg.com/originals/cd/22/52/cd225281dff67979c53fd5a47670c278.jpg", place_purchased: "JoAnn's", description: Faker::TvShows::HowIMetYourMother.quote)

#UserMaterials
um1 = UserMaterial.create(user_id: 1 , material_id: 1)
um2 = UserMaterial.create(user_id: 1 , material_id: 2)

#ProjectMaterials
pm1 = ProjectMaterial.create(project_id: 1 , material_id: 1)
pm2 = ProjectMaterial.create(project_id: 1 , material_id: 2)

#Tool
scissor = Tool.create(user_id: 1, label: "craft scissors", category: "craft supplies", price: 5, description:"scissors for crafting", image_url: "https://upload.wikimedia.org/wikipedia/commons/7/76/Pair_of_scissors_with_black_handle%2C_2015-06-07.jpg", place_purchased: "Michael's")
