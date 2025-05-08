class Scenario < ApplicationRecord
  has_many :scenario_actions
  has_many :actions, through: :scenario_actions
end
