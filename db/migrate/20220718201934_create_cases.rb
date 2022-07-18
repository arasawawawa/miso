class CreateCases < ActiveRecord::Migration[7.0]
  def change
    create_table :cases do |t|
      t.belongs_to :clinic
      t.string :title
      t.integer :age
      t.integer :sex
      t.integer :doctor_id
      t.text :content
      t.timestamps
    end
  end
end
