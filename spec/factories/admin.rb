FactoryBot.define do

  factory :admin do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

end