class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :category
      t.decimal :price
      t.string :name

      t.timestamps null: false
    end
  end
end
