class Scenario < ApplicationRecord
  has_many :scenario_actions, dependent: :destroy
  has_many :actions, through: :scenario_actions
end
