class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.string :password_digest, null: false
      t.boolean :is_admin, null: false 
      t.string :session_token, null: false

      t.timestamps null: false 
    end
  end
end
