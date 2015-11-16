FactoryGirl.define do
  factory :user do
    email 'factory.girl@gothenburger.com'
    password 'password'
    password_confirmation 'password'
  end
end
