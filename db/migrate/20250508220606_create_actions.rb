class CreateActions < ActiveRecord::Migration[8.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.text :description
      t.integer :difficulty
      t.text :success_text
      t.text :failure_text

      t.timestamps
    end
  end
end
