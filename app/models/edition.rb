class Edition < ActiveRecord::Base
  include StreetAdmin

  validates_presence_of :name

  has_many :gifts
end
