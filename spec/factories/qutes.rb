FactoryBot.define do
  factory :quote do
    description { "some text" }
    author_name {  Faker::Name.name  }
    order { Random.rand(1..6)}
  end
end