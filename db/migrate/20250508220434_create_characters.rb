class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :health
      t.boolean :alive
      t.integer :experience

      t.timestamps
    end
  end
end
