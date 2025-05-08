class Character < ApplicationRecord
  has_many :character_items
  has_many :items, through: :character_items

  validates :name, presence: true
  valdates :health, numericality: { greater_than_or_equal_to: 0}
end
