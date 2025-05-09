class Action < ApplicationRecord
  has_many :scenario_actions, dependent: :destroy
  has_many :scenarios, through: :scenario_actions
end
