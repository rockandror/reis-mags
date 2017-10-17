class Edition < ActiveRecord::Base
  include EditionAdmin

  validates_presence_of :name

  has_many :gifts
end
