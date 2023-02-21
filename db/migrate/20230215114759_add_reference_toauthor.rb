class AddReferenceToauthor < ActiveRecord::Migration[7.0]
  def change
    add_reference :books , :authors , foreign_key: true
  end
end



# bin/rails generate migration AddReferenceToauthor 
