class Customer < ApplicationRecord
  belongs_to :movie
  belongs_to :theater
  belongs_to :screen
end
