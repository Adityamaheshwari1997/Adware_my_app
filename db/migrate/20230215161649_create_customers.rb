class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.references :movie,:screen,:theater, null: false, foreign_key: true

      t.string :c_name
    end
  end
end
