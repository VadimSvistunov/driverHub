class CreateOrders < ActiveRecord::Migration[7.0]
    def change
      create_table :orders do |t|
        t.datetime :started_at
        t.datetime :finished_at
        t.belongs_to :car,      null: false, index: true
        t.belongs_to :customer, null: false, index: true
        t.timestamps
      end
    end
  end