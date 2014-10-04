FactoryGirl.define do
  factory :page do
    title { generate :string }
    body { generate :string }
    slug { generate :string }
  end
end
