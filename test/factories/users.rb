FactoryGirl.define do
  factory :user do
    first_name { generate :string }
    middle_name { generate :string }
    last_name { generate :string }
    email
    password "123456789"
    password_confirmation "123456789"
  end
end
