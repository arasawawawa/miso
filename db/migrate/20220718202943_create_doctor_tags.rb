class CreateDoctorTags < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_tags do |t|
      t.belongs_to :doctor
      t.belongs_to :tag
      t.timestamps
    end
  end
end
