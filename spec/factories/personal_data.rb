FactoryBot.define do
  factory :personal_datum do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    nickname { Faker::Name.name }
    email_address { Faker::Internet.email }
    phone_number  { Faker::PhoneNumber.phone_number }
  end
end
