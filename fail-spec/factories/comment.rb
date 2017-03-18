
require 'faker'

FactoryGirl.define do

  factory :comemnt, class: "Comment" do
    body Faker::Lorem.paragraphs
    post
  end

  factory :comment_invalid, class: "Comment" do
    body Faker::Lorem.paragraphs
    post
  end


end
