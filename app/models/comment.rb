class Comment < ApplicationRecord

  validates :body, presence: true,
            length: { minimum: 25  }

  belongs_to :user
	belongs_to :post

  belongs_to :commentable, :polymorphic => true

  has_many :comments, :as => :commentable

end
