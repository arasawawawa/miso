class CreateSpecialtyItems < ActiveRecord::Migration[7.0]
  def change
    create_table :specialty_items do |t|
      t.belongs_to :specialty_category
      t.string :name

      t.timestamps
    end
  end
end
