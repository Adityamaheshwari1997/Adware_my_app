class Theater < ApplicationRecord
  has_many :customers
  has_many :screens
  has_many :employees
end
