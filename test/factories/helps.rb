FactoryGirl.define do
  factory :help do
    title { generate :string }
    body { generate :string }
  end
end
