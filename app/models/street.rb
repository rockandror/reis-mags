class Street < ActiveRecord::Base
  include StreetAdmin

  validates_presence_of :name, :position

  has_many :gifts
end
