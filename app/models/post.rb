class Post < ApplicationRecord

	validates :title, presence: true,
            length: { minimum: 5  }

  belongs_to :user

  has_many :comments, :as => :commentable

end
