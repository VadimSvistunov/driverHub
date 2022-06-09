class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :started_at
      t.datetime :finished_at
      t.timestamps
    end

    add_reference :orders, :customer, index: false
    add_reference :orders, :car, index: false

  end
end
