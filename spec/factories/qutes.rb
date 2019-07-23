FactoryBot.define do
  factory :quote do
    description { "some text" }
    author_name {  Faker::Name.name  }
    sequence(:order)
  end
end