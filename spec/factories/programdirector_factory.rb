FactoryBot.define do
    factory :programdirector do
    Name {Faker::Name.unique.name}
    CWID {Faker::Number.number(digits: 8)}
    end
end