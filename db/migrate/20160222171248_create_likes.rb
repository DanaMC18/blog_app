class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :topic
      t.references :comment
      t.timestamps null: false
    end
  end
end
