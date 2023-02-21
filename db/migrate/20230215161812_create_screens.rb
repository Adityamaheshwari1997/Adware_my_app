class CreateScreens < ActiveRecord::Migration[7.0]
  def change
    create_table :screens do |t|
      t.references :theater, null: false, foreign_key: true

      t.string :s_name
    end
  end
end
