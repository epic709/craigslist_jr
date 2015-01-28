require 'faker'
require_relative '../app/models/category'
require_relative '../app/models/post'

#create some dummy data
Category.create(description: "Cars")
Category.create(description: "Housing")
Category.create(description: "Food")
Category.create(description: "Services")
Category.create(description: "Man Seeking Cat")
Category.create(description: "Women Seeking Equality")
Category.create(description: "Clothes")


Category.all.each do |c|
    3.times do
        fake_price = rand(1..999).to_s + '.' + rand(1..99).to_s
        c.posts.create(
            title: Faker::Lorem.sentence(3),
            description: Faker::Lorem.sentence(15),
            location: Faker::Address.city,
            price: fake_price,
            email: Faker::Internet.email,
            phone_number: Faker::PhoneNumber.phone_number,
            image_url: Faker::Internet.url + '.' + 'jpg'
        )
    end
end
