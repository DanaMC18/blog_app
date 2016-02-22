class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.date :date
      t.references :topic
      t.timestamps null: false
    end
  end
end
