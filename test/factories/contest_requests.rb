# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contest_request do
    goal { generate :string }
    tasks { generate :string }
    annotation { generate :string }
    problem { generate :string }
    audience { generate :string }
    real_methods { generate :string }
    results { generate :string }
    multiplicativity { generate :string }
    plan { generate :string }
    estimates { generate :string }
    contest_title { generate :string }
    contest_url { generate :url }
    user_id 1
  end
end
