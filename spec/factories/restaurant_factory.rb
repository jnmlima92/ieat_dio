FactoryBot.define do
  factory :restaurant do
    name { Faker::Restaurant.name }
  end

  trait :complete do
    address { Faker::Address.full_address }
  end
end
