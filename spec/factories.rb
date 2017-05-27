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

end