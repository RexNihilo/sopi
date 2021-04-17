FactoryBot.define do
    factory :course do
        prefix {Faker::Number.number(digits: 3)}
        name {Faker::Name.unique.name}
        number {Faker::Number.number(digits: 3)}
        section {Faker::Number.number(digits: 1)}
        #semesters_id {Faker::Number.number(digits: 6)}
        semester
    end
end