class CreateScenarioActions < ActiveRecord::Migration[8.0]
  def change
    create_table :scenario_actions do |t|
      t.references :scenario, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
