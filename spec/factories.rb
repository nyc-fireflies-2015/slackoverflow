FactoryGirl.define do
  factory :user do
    username Faker::Internet.user_name
    password "1234"
  end

  factory :question do
    title Faker::Hacker.noun
    body Faker::Hacker.say_something_smart
  end

  factory :comment do
    body Faker::Hacker.say_something_smart
  end
end