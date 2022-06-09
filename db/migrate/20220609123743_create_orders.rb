class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :cars, car_id: true
      t.references :customers, customer_id: true
      t.datetime :started_at
      t.datetime :finished_at
      t.timestamps
    end

    add_foreign_key :orders, :cars
    add_foreign_key :orders, :customers

  end
end
