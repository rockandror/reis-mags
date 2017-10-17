class CreateEdition < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.string :name
    end
  end
end
