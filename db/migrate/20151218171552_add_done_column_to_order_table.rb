class AddDoneColumnToOrderTable < ActiveRecord::Migration
  def change
    add_column :orders, :done, :boolean
  end
end
