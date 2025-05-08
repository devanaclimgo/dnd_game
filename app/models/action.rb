class Action < ApplicationRecord
  has_many :scenario_actions
  has_many :scenarios, through: :scenario_actions
end
