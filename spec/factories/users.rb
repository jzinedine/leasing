#encoding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'user'
    email 'user@example.com'
    password 'please'
    password_confirmation 'please'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now

    factory :admin do
      after(:create) {|user| user.add_role(:admin)}
    end

    factory :curator do
      after(:create) {|user| user.add_role(:curator)}
    end

    factory :super_admin do
      after(:create) {|user| user.add_role(:super_admin)}
    end
  end
end