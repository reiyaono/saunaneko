class CreateSauna < ActiveRecord::Migration[6.0]
  def change
    create_table :saunas do |t|
      t.references :prefecture, foreign_key: true, null: false
      t.string :name
      t.integer :room_temperature
      t.integer :water_temperature
      t.boolean :has_aufguss
      
      t.timestamps
    end
  end
end
