class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.belongs_to :clinic
      t.string :name
      t.text :history
      t.text :license
      t.string :homepage
      t.timestamps
    end
  end
end
