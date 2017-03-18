
require 'faker'

FactoryGirl.define do

  factory :post, class: "Post" do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraphs

    after(:build) do |post|
      post.comments = build_list( comment, 3, commentable: post )
    end

    after(:create) do |post|
      post.comments.each { |comemnt| comment.save! }
    end
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
