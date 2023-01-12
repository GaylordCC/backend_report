require "faker"

FactoryBot.define do
  factory :visit do
    visit_date { Faker::Date.between(from: '2023-01-15', to: '2023-12-31') }
    profesion { Faker::Company.profession }
    coordinator { Faker::Name.name }
    number_day { Faker::Number.between(from: 1, to: 15) }
    equimen_description { Faker::Lorem.paragraph }
    contact_email { Faker::Internet.email }
    phase { Faker::Number.between(from: 1, to: 3) }
    initial_day { Faker::Time.forward(days: 20,  period: :evening, format: :long) }
    final_day { Faker::Time.forward(days: 50,  period: :evening, format: :long) }
    company
  end
end
