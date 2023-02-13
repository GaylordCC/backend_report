require "faker"

FactoryBot.define do
  factory :report do
    report_title { Faker::Book.title }
    report_subtitle { Faker::Book.title }
    connection_point { Faker::Appliance.equipment }
    initial_day { Faker::Time.forward(days: 20,  period: :evening, format: :long) }
    final_day { Faker::Time.forward(days: 50,  period: :evening, format: :long) }
    total_days_service { Faker::Number.between(from: 1, to: 10) }
    author { Faker::Name.name }
    reviewer { Faker::Name.name }
    client_responsible { Faker::Name.name }
    equipment { Faker::Appliance.equipment }
    equipment_model { Faker::Device.model_name }
    working_voltage { Faker::Number.between(from: 1, to: 1000) }
    connection_type { Faker::Code.asin }
    phase_number { Faker::Number.between(from: 1, to: 3) }
    total_power { Faker::Number.between(from: 1, to: 1000) }
    company_photo { Faker::Movie.title }
    connection_point_photo { Faker::Movie.title }
    city { Faker::Address.city }
    department { Faker::Australia.state }
    year { Faker::Stripe.year }
    visit
  end
end
