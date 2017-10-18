class Gift < ActiveRecord::Base
  include GiftAdmin
  validates_presence_of :name, :street_number, :street_id

  belongs_to :street
  belongs_to :edition

  before_save :update_street_position

  scope :inscripcions, -> {
    all.order("street_number ASC")
  }

  private

  def update_street_position
    self.street_position = street.position
  end

end
