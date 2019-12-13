class Attraction < ApplicationRecord
  belongs_to :trip

  validates :name, presence: true
  validates :attraction_type, inclusion: { in: %w( house castle cemetary bar/restaurant landmark ),
    message: "%{value} is not a valid type of attraction" }
  validates :zip_code, length: { maximum: 5, minumum:  5, wrong_length: "Please enter a valid zip code" } }, numericality: true
end
