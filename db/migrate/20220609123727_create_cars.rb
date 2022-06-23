class CreateCars < ActiveRecord::Migration[7.0]
    def change
      create_table :cars do |t|
        t.string :model
        t.integer :price
        t.boolean :status, default: false
        t.timestamps
      end
    end
  end