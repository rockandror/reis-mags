FactoryGirl.define do

  factory :user do
    sequence(:email)    { |n| "useremail#{n}@emample.com" }
    password              "qwer1234"
    password_confirmation "qwer1234"
    role :user
    trait :admin_user do
      role :admin
    end
    factory :admin, traits: [:admin_user]
  end

  factory :street do
    sequence(:name)        { |n| "name_street_#{n}" }
    sequence(:position)    { |n| n }
  end

  factory :gift do
    sequence(:name)             { |n| "name_street_#{n}" }
    sequence(:street_number)    { |n| n }
    street
  end

end
