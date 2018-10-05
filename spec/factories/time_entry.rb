FactoryBot.define do
  factory :time_entry do
    date { Date.today.to_s }
    time { DateTime.now.strftime('%H:%M') }
    minutes { DateTime.now.minute }
    details { Faker::RickAndMorty.quote }
    user
    project
  end
end
