FactoryBot.define do
    factory :student do
        professor
        Name {Faker::Name.name}
        CWID {Faker::Number.number(digits: 8)}
        Concentration {"Computer Science"}
        Advisor {Faker::Name.name}
        
    end
        
end