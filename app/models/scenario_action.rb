class ScenarioAction < ApplicationRecord
  belongs_to :scenario
  belongs_to :action
end
