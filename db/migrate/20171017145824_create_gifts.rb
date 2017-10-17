class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :street_number
      t.string :street_id

      t.timestamps null: false
    end
  end
end
