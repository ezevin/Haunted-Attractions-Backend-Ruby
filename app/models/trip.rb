class Trip < ApplicationRecord
  has_many :attractions

  validates :trip_name, presence: true
end
