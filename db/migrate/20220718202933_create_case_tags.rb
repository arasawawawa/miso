class CreateCaseTags < ActiveRecord::Migration[7.0]
  def change
    create_table :case_tags do |t|
      t.belongs_to :case
      t.belongs_to :tag
      t.timestamps
    end
  end
end
