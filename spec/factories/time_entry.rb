FactoryBot.define do
  factory :time_entry do
    date { Date.today.to_s }
    time { DateTime.now.strftime('%H:%M') }
    minutes { DateTime.now.minute }
    details { '<https://trello.com/c/hcIRv6W0/1496-google-analytics>' }
    user
    project
  end
end
