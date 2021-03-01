class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.integer :plant_id
      t.string :nickname

      t.timestamps
    end
  end
end
