FactoryBot.define do
    factory :semester do
        course1 {Faker::Book.title}
        course2 {Faker::Book.title}
        course3 {Faker::Book.title}
        course4 {Faker::Book.title}
        season {"fall"}
        year {1990}
        plan
    end
end