class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :content
      t.string :author
      t.date :date
      t.timestamps null: false
    end
  end
end
