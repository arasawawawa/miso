class CreateMenuTags < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_tags do |t|
      t.belongs_to :menu
      t.belongs_to :tag
      t.timestamps
    end
  end
end
