class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :street_number
      t.integer :street_id

      t.timestamps null: false
    end

    add_index :gifts, :street_id
  end
end
