FactoryBot.define do
  factory :employment do
    employer  { Faker::Company.name }
    date_started  { 1.year.before }
    employment_ended { 1.month.before }

    association :personal_datum, factory: :personal_datum
  end
end
