require "faker"

FactoryBot.define do
  factory :company do
    name { Faker::App.name }
    city { Faker::Address.city }
    identification { Faker::Number.leading_zero_number(digits: 10) }
    adress { Faker::Address.full_address }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone_with_country_code }
  end
end
