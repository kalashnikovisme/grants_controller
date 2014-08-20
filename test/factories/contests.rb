FactoryGirl.define do
  factory :contest do
    grant_operator_id { GrantOperator.last ? GrantOperator.last.id : 1 }
    title { generate :string }
    description { generate :string }
    link { generate :url }
  end
end
