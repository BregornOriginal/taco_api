class Taco < ApplicationRecord
  validates :notes, presence: true, length: { minimum: 1, maximum: 250 }
end
