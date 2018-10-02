FactoryBot.define do
  factory :absence do
    user
    reason 'other'
    date { Time.current }
    comment { Faker::RickAndMorty.quote }

    trait :vacation do reason 'vacation'; end
    trait :illness  do reason 'illness'; end
  end
end