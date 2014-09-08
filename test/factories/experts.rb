# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expert do
    job "MyText"
    post "MyText"
    degree { Expert.degree.values.first }
    user_id { User.last ? User.last.id : 1 }
  end
end
