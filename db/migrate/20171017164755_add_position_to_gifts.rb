class AddPositionToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :street_position, :integer
  end
end
