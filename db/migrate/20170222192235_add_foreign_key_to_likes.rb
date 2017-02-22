class AddForeignKeyToLikes < ActiveRecord::Migration
  def change
    add_foreign_key :likes, :topics
    add_foreign_key :likes, :comments
  end
end
