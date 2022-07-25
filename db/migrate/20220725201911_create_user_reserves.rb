class CreateUserReserves < ActiveRecord::Migration[7.0]
  def change
    create_table :user_reserves do |t|
      t.belongs_to :user
      t.date :date
      t.integer :clinic_menu_id
      t.integer :clinic_id

      t.timestamps
    end
  end
end
