class AddCommentsToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_reference :authors, :comments, foreign_key: true
  end
end
