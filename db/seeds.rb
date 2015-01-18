# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({"email"=>"johndoe@com.pl", "firstname"=>"John", "lastname"=>"Doe", "password" => "hello123", "admin" => "true" })
User.create({"email"=>"johndoe2@com.pl", "firstname"=>"John2", "lastname"=>"Doe2", "password" => "hello123" })
User.create({"email"=>"johndoe3@com.pl", "firstname"=>"John3", "lastname"=>"Doe3", "password" => "hello123" })
User.create({"email"=>"johndoe4@com.pl", "firstname"=>"John4", "lastname"=>"Doe4", "password" => "hello123" })
User.create({"email"=>"johndoe5@com.pl", "firstname"=>"John5", "lastname"=>"Doe5", "password" => "hello123" })

cat = Category.create({"name" => "cars"})

prod = Product.create({"title" => "porsche", "description" => "911", "price" => 700000, "user" => user, "category" => cat })
prod2= Product.create({"title" => "aston martin", "description" => "DB9", "price" => 1200000, "user" => user, "category" => cat })

Review.create({"content" => "great", "rating" => 5, "product" => prod, "user" => user })
Review.create({"content" => "awesome", "rating" => 5, "product" => prod, "user" => user })
Review.create({"content" => "great", "rating" => 5, "product" => prod2, "user" => user })