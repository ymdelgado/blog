
require 'faker'

FactoryGirl.define do

  factory :post, class: "Comment" do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraphs
    user
  end

  factory :post_invalid, class: "Post" do
    title nil
    body Faker::Lorem.paragraphs
    user
  end

  factory :post_too_short_title, class: "Post" do
    title "est"
    body Faker::Lorem.paragraphs
    user
  end

end
