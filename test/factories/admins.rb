FactoryGirl.define do
  factory :admin, class: "User" do
    email
    password "123456789"
    password_confirmation "123456789"
  end
end
