FactoryGirl.define do
  factory :user do
    name     "Daniel Babicky"
    email    "danny@example.com"
    password "password"
    password_confirmation "password"
  end
end