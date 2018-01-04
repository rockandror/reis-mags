class AddGiftCountToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :gift_count, :integer
  end
end
