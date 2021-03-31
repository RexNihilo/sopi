FactoryBot.define do
    factory :user do
        password { "pass" }
        email {"mail@mail.mail"}
        encrypted_password {"pass"}
        confirmation_token {"token"}
        
    end
end