class Gift < ActiveRecord::Base
  include GiftAdmin
  validates_presence_of :name, :street_number, :street_id
  validates :gift_count, numericality: { greater_than: 0 }

  belongs_to :street
  belongs_to :edition

  before_save :update_street_position
  after_create :clone_gifts

  scope :inscripcions, -> {
    where(edition_id: Edition.last).order("street_number ASC")
  }

  private

  def update_street_position
    self.street_position = street.position
  end

  def clone_gifts
    Gift.skip_callback(:create, :after, :clone_gifts)
    (1..self.gift_count).each do |i|
      if i < self.gift_count
        duplicate_gift = self.dup
        duplicate_gift.save
      end
    end
    Gift.set_callback(:create, :after, :clone_gifts)
  end

end
