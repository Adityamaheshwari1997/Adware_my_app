class CreateTheaters < ActiveRecord::Migration[7.0]
  def change
    create_table :theaters do |t|

      t.string :t_name
    end
  end
end
