FactoryBot.define do
  factory :user do
    name      { Faker::RickAndMorty.character }
    is_active { true }
    team
  end
end
