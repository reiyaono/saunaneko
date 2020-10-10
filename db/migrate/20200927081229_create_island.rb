class CreateIsland < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name, null: false
      t.boolean :is_near_from_city, null: false
      t.references :prefecture, foreign_key: true, null: false

      t.timestamps
    end
  end
end
