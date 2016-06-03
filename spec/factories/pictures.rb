FactoryGirl.define do
  factory :picture do
    name         Faker::Book.title
    description  Faker::Book.genre

    user
  end
end
