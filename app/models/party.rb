class Party < ActiveRecord::Base
  has_many :orders
  has_many :menu_items, through: :orders

  def total
    total=0
    self.menu_items.each do |item|
      total += item.price
    end
  total
  end
  
end
