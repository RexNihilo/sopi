FactoryBot.define do
  factory :comment do
    user
    discussion
    body {"body text"}
  end
end