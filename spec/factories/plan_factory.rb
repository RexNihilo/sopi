FactoryBot.define do
    factory :plan do
     student
     nameofplan {Faker::Name.name}
    end
end