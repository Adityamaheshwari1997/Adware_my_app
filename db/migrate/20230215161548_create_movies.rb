class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.references :screen, null: false, foreign_key: true

      t.string :m_name
    end
  end
end
