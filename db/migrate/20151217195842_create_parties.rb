class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :guest_num
      t.integer :table_num
      t.integer :server_id

      t.timestamps null: false
    end
  end
end
