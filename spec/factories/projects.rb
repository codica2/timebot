FactoryBot.define do
  factory :project do
    sequence :name do |n|
      "Project_#{n}"
    end
    sequence :alias do |n|
      "alias_#{n}"
    end
    team
  end
end
