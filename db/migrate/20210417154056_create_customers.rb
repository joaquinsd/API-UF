class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.date :request_date
      t.string :request

      t.timestamps
    end
  end
end
