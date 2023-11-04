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
                image_url: 'https://www.themeparktourist.com/files/kentucky_rumbler-15.jpg',
                price: 19.99)

Product.create!(title: 'Concrete Connoisseur\'s Rail Extravaganza',
                description:
                  %{Indulge in the sturdiest rails known to humankind. Perfect for those seeking a rock-solid foundation for their daily rail adventures!},
                image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Feste_Fahrbahn_FFB%C3%B6gl.jpg/1200px-Feste_Fahrbahn_FFB%C3%B6gl.jpg',
                price: 29.99)

Product.create!(title: 'Fancy Footwork Frolic Rails',
                description:
                  %{Feel the elegance with our sleek, silver-coated rails, designed for the sophisticated rail enthusiast in you. Twirl and glide like never before!},
                image_url: 'https://www.europapark.de/sites/default/files/styles/wide/public/media_image/2023-08/EP23_Frankreich_Silverstar_Sommer_5.jpg?itok=Rm8W0GoF',
                price: 39.99)

Product.create!(title: 'The \'Choo-Choo Chic\' Collection',
                description:
                  %{All aboard the fashion train! Get noticed with our vibrant, neon-colored rails, guaranteed to make every commute a runway experience!},
                image_url: 'https://weburbanist.com/wp-content/uploads/2015/07/wabash-lights-large.jpg',
                price: 24.99)

Product.create!(title: 'Whimsical Whirlwind Rails',
                description:
                  %{Add a touch of magic to your daily travels with our rainbow-striped, spiraling rails. Get ready to ride through the technicolor dreamland!},
                image_url: 'https://images.nightcafe.studio/jobs/r3B2re2a9wXk82EUsyzm/r3B2re2a9wXk82EUsyzm--1--t3wb5_7.8125x.jpg?tr=w-1600,c-at_max',
                price: 34.99)

Product.create!(title: 'Bamboo Bliss Rails Bonanza',
                description:
                  %{Go green with our eco-friendly, bamboo-crafted rails, providing a sustainable yet stylish option for your eco-conscious rail adventures!},
                image_url: 'https://storage.googleapis.com/recotori-prod-0820.appspot.com/review/x_thumbnail/CjSNbURPIWUCd3SjDkXcTGmNfXV2/B60D9A1D-C1AF-434B-A88C-86CD0F62A5CB.jpg',
                price: 27.99)

Product.create!(title: 'Ultra Plush Pillow Rails',
                description:
                  %{Why just ride when you can ride in comfort? Try our plush, cushioned rails for the coziest commute experience you'll ever have!},
                image_url: 'https://m.media-amazon.com/images/I/51QQNthJ0VL._AC_UF894,1000_QL80_.jpg',
                price: 44.99)
