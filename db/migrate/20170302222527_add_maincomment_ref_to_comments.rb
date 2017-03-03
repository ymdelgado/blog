class AddMaincommentRefToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :maincomment, foreign_key: true
  end
end
