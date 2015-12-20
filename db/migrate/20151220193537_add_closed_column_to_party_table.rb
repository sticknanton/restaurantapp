class AddClosedColumnToPartyTable < ActiveRecord::Migration
  def change
    add_column :parties, :closed, :boolean
  end
end
