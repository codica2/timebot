FactoryBot.define do
  factory :holiday do
    name { Faker::RickAndMorty.character }
    sequence :date do |m|
      Date.current + m.days
    end
  end
end