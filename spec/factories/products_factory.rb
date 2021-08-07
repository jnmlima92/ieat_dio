FactoryBot.define do
  factory :product do
    name { Faker::Food.dish }
    value { Faker::Commerce.price(range: 0..100.0, as_string: true) }
    restaurant
  end
end
