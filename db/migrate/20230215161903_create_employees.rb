class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :theater, null: false, foreign_key: true

      t.string :e_name
    end
  end
end
