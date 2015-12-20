class MenuItem < ActiveRecord::Base
  belongs_to :admin
  has_many :orders, dependent: :destroy
  has_many :parties, through: :orders
end
