class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :points
      t.string :description

      t.timestamps
    end
  end
end
