# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expert do
    first_name "MyText"
    middle_name "MyText"
    last_name "MyText"
    job "MyText"
    post "MyText"
    degree { Expert.degree.values.first }
    user_id { User.last ? User.last.id : 1 }
  end
end
