FactoryBot.define do
  factory :company do
    name { Faker::address.cityName }
    city { Faker::address.cityName }
    identification { Faker::address.cityName }
    adress { Faker::address.cityName }
    email { Faker::internet.email }
    phone { Faker::address.cityName }
  end
end
