class Gift < ActiveRecord::Base
  include GiftAdmin

  validates_presence_of :name, :street_number, :street_id

  belongs_to :street

end
