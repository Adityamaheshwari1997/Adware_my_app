class Movie < ApplicationRecord
  has_many :users
  has_many :customers 
  belongs_to :screen 
  validates :screen_id, presence: true , uniqueness: true 
  # validate :unique_screen


  # def unique_screen
  #   binding.pry
  #   screens = []
  #   self.screen do |sc|
  #     if !screens.include?(sc)
  #       screens.push(sc)
  #     end
  #   end
  # end
end
