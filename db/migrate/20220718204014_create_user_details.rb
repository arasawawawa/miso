class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.belongs_to :user
      t.integer :sex
      t.date :birthday
      t.boolean :adult
      t.integer :prefecture_id
      t.boolean :experience
      t.text :profile
      t.integer :point
      t.integer :is_activated
      t.integer :is_deleted
      t.timestamps
    end
  end
end
