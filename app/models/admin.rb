class Admin < ActiveRecord::Base
  has_secure_password
  has_many :menuitems
  has_many :servers
end
