class AddForeignKeyToTags < ActiveRecord::Migration
  def change
    add_foreign_key :tags, :topics
  end
end
