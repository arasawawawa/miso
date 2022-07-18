class CreateClinicTags < ActiveRecord::Migration[7.0]
  def change
    create_table :clinic_tags do |t|
      t.belongs_to :clinic
      t.belongs_to :tag
      t.timestamps
    end
  end
end
