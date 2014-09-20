# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hint do
    subject { generate :string }
    body { generate :string }
    lead { generate :string }
  end
end
