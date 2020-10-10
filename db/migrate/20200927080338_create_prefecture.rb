class CreatePrefecture < ActiveRecord::Migration[6.0]
  def change
    create_table :prefectures do |t|
      t.string :name, null: false
      t.boolean :has_food, null: false
      t.boolean :has_sightseeing, null: false

      t.timestamps
    end
  end
end
