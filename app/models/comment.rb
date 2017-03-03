class Comment < ApplicationRecord

  belongs_to :post
  belongs_to :user

  #has_many :subcomments, class_name: "Comment",
                        #foreign_key: "maincomment_id"

  #belongs_to :maincomment, class_name: "Comment"

end
