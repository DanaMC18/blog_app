class AddForeignKeyToComments < ActiveRecord::Migration
  def change
    add_foreign_key :comments, :topics
  end
end
