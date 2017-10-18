class Gift < ActiveRecord::Base
  include GiftAdmin
  validates_presence_of :name, :street_number, :street_id

  belongs_to :street
  belongs_to :edition

  before_save :update_street_position

  default_scope {
    select('gifts.*, (gifts.street_position + gifts.street_number) AS delivery_order').order("delivery_order ASC")
  }

  private

  def update_street_position
    self.street_position = street.position
  end

end
