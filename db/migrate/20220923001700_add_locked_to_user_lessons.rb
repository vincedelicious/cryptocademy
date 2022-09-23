class AddLockedToUserLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :user_lessons, :locked, :boolean, default: true, null: false
  end
end
