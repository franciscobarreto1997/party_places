class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :capacity
      t.integer :price
      t.string :location
      t.text :address
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
