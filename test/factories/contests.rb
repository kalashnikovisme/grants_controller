FactoryGirl.define do
  factory :contest do
    organization
    organization_id { Organization.last ? Organization.last.id : 1 }
    title { generate :string }
    description { generate :string }
    link { generate :url }
    end_date { generate :date }
  end
end
