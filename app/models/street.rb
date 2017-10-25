class Street < ActiveRecord::Base
  include StreetAdmin

  validates_presence_of :name, :position
  after_save :update_gift_street_position

  has_many :gifts

  private

  def update_gift_street_position
    Gift.where(edition: Edition.last).each do |gift|
      gift.street_position = gift.street.position
      gift.save
    end
  end
end
