FactoryGirl.define do
  factory :article do
    title        Faker::Book.title
    description  Faker::Book.genre
  end
end
