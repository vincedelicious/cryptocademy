class ChangeDefaultValuesToUserLessons < ActiveRecord::Migration[7.0]
  def change
    change_column_default :user_lessons, :card_status, from: nil, to: 1
    change_column_default :user_lessons, :completed, from: nil, to: false
  end
end
