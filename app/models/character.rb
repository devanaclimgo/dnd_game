class Character < ApplicationRecord
  has_many :character_items
  has_many :items, through: :character_items

  validates :name, presence: true
  valdates :health, numericality: { greater_than_or_equal_to: 0}

  def take_damage(amount)
    update(health: [health - amount, 0].max)
    update(alive: false) if health <= 0
  end

  def heal(amount)
    update(health : [health + amount, 10].min)
  end
end
