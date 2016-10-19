FactoryGirl.define do

  factory :user do
    sequence(:email)    { |n| "useremail#{n}@emample.com" }
    password              "qwer1234"
    password_confirmation "qwer1234"
    trait :owner_user do
      role :owner
    end
    factory :owner, traits: [:owner_user]    
  end  

end 