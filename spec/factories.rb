FactoryGirl.define do
  factory :user do
    email "bob@bob.com"
    username "bob12345"
    password "password"
    password_confirmation "password"

  end

  factory :banana, class: Food do
    name "banana"
    calories 30
  end

  factory :chicken, class: Food do
    name "chicken"
    calories 120
  end
end
