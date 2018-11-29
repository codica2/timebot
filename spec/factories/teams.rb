FactoryBot.define do
  factory :team do
    name        { Faker::RickAndMorty.character }
    description { Faker::RickAndMorty.quote }
  end
end
