class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :light
      t.string :watering
      t.string :soil
      t.string :image

      t.timestamps
    end
  end
end
