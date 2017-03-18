
require 'faker'

FactoryGirl.define do

  factory :comment, class: "Comment" do

    #association :commentable, :factory => :comment
    body Faker::Lorem.paragraphs
    post
    user

  end

end

