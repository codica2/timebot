FactoryBot.define do
  factory :user do
    sequence :name do |n|
      "User_#{n}"
    end
    is_active { true }
    uid       { Faker::Internet.password }
    team
  end
end
