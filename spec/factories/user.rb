
require 'faker'

FactoryGirl.define do

  sequence :email do |n|
    "person#{n}@example.com"
  end

  factory :user, class: "User" do
    email { generate :email }
    password  Faker::Internet.password
    password_confirmation { password }
  end

  factory :user_nil, :class => 'User' do
    nil
  end

end
