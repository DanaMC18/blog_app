class RemoveAuthorFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :author
  end
end
