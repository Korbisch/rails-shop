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
                image_url: 'wooden-rails.jpeg',
                price: 19.99)

Product.create!(title: 'Concrete Connoisseur\'s Rail Extravaganza',
                description:
                  %{Indulge in the sturdiest rails known to humankind. Perfect for those seeking a rock-solid foundation for their daily rail adventures!},
                image_url: 'concrete-rails.jpeg',
                price: 29.99)

Product.create!(title: 'Fancy Footwork Frolic Rails',
                description:
                  %{Feel the elegance with our sleek, silver-coated rails, designed for the sophisticated rail enthusiast in you. Twirl and glide like never before!},
                image_url: 'silver-rails.jpeg',
                price: 39.99)

Product.create!(title: 'Bamboo Bliss Rails Bonanza',
                description:
                  %{Go green with our eco-friendly, bamboo-crafted rails, providing a sustainable yet stylish option for your eco-conscious rail adventures!},
                image_url: 'bamboo-rails.jpeg',
                price: 27.99)

Product.create!(title: 'Ultra Plush Pillow Rails',
                description:
                  %{Why just ride when you can ride in comfort? Try our plush, cushioned rails for the coziest commute experience you'll ever have!},
                image_url: 'pillow-rails.jpeg',
                price: 44.99)
