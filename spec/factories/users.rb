FactoryGirl.define do
  factory :user do
    email 'factory.girl@gothenburger.com'
    password 'password'
    password_confirmation 'password'
  end

  factory :rogue_user do
    email 'factory.girl@not-gothenburger.com'
    password 'password'
    password_confirmation 'password'
  end
end
