FactoryBot.define do
    factory :user do
        password { "pass" }
        email {Faker::Internet.safe_email}
        encrypted_password {"pass"}
        confirmation_token {"token"}
        
    end
        
end