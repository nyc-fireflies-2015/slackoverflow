FactoryGirl.define do
  factory :user do
    username Faker::Internet.user_name
    password "1234"

    factory :invalid_user do
      username nil
    end
  end

  factory :question do
    title Faker::Hacker.noun
    body Faker::Hacker.say_something_smart
  end

  factory :comment do
    body Faker::Hacker.say_something_smart
  end

# Need to sort out this polymorphism association in factory to get tests to pass
  factory :vote do
    value 1
    user
    comment
  end
end