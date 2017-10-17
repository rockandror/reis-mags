class AddEditionFieldToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :edition_id, :string
  end
end
