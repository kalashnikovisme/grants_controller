FactoryGirl.define do
  factory :admin, class: "User" do
    email
    password
  end
end
