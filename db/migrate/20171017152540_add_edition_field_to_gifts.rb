class AddEditionFieldToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :edition_id, :integer
    add_index :gifts, :edition_id
  end
end
