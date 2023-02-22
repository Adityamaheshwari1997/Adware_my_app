class Screen < ApplicationRecord
  has_many :users
  belongs_to :theater
  has_one :movie 
  validates :s_name , presence: true 
end
