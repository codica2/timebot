FactoryBot.define do
  factory :user do
    sequence :name do |n|
      "User_#{n}"
    end
    is_active { false }
    uid       { Faker::Internet.password }
    team

    trait :active do is_active true; end
  end
end
