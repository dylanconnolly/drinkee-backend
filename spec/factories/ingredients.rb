FactoryBot.define do
  factory :ingredient do
    name { |n| "Ingedient #{n}" }
    description { "Description for ingredient" }
    alcohol { "no" }
    abv { nil }
  end
end
