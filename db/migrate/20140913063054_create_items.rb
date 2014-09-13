class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title
      t.string :phone
      t.integer :price
      t.string :condition
      t.boolean :sold

      t.timestamps
    end
  end
end
