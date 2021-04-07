FactoryBot.define do
    factory :professor do
        programdirector
        Name {Faker::Name.name}
        CWID {Faker::Number.number(digits: 8)}
        
    end
        
end