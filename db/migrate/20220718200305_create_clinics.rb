class CreateClinics < ActiveRecord::Migration[7.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.text :address
      t.integer :prefecture_id
      t.integer :area_id
      t.text :holiday
      t.text :opentime
      t.text :bio_content
      t.integer :doctor_id
      t.timestamps
    end
  end
end
