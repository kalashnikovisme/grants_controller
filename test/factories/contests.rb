FactoryGirl.define do
  factory :contest do
    title { generate :string }
    description { generate :string }
    link { generate :url }
    founder { generate :string }
  end
end
