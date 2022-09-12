class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :header
      t.text :content
      t.integer :card_number
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
