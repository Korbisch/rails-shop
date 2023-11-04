# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all

Product.create!(title: 'Rustic Rail-a-Palooza',
                description:
                  %{Experience the thrill of rail surfing with our handcrafted wooden rails. Guaranteed to give your commute a wild twist!},
                image_url: '',
                price: 19.99)

Product.create!(title: 'Concrete Connoisseur\'s Rail Extravaganza',
                description:
                  %{Indulge in the sturdiest rails known to humankind. Perfect for those seeking a rock-solid foundation for their daily rail adventures!},
                image_url: '',
                price: 29.99)

Product.create!(title: 'Fancy Footwork Frolic Rails',
                description:
                  %{Feel the elegance with our sleek, silver-coated rails, designed for the sophisticated rail enthusiast in you. Twirl and glide like never before!},
                image_url: '',
                price: 39.99)

Product.create!(title: 'The \'Choo-Choo Chic\' Collection',
                description:
                  %{All aboard the fashion train! Get noticed with our vibrant, neon-colored rails, guaranteed to make every commute a runway experience!},
                image_url: '',
                price: 24.99)

Product.create!(title: 'Whimsical Whirlwind Rails',
                description:
                  %{Add a touch of magic to your daily travels with our rainbow-striped, spiraling rails. Get ready to ride through the technicolor dreamland!},
                image_url: '',
                price: 34.99)

Product.create!(title: 'Bamboo Bliss Rails Bonanza',
                description:
                  %{Go green with our eco-friendly, bamboo-crafted rails, providing a sustainable yet stylish option for your eco-conscious rail adventures!},
                image_url: '',
                price: 27.99)

Product.create!(title: 'Ultra Plush Pillow Rails',
                description:
                  %{Why just ride when you can ride in comfort? Try our plush, cushioned rails for the coziest commute experience you'll ever have!},
                image_url: '',
                price: 44.99)
