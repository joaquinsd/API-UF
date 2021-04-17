class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.float :value
      t.date :date

      t.timestamps
    end
  end
end
