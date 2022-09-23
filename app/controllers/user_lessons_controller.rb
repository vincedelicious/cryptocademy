class UserLessonsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def add_points
    user_lesson = UserLesson.find(params[:id])
    # Update card status of the user lesson to card being currently view
    # Check if card_status is equal to total number of cards of lesson
    if user_lesson.increment_card_status?(params[:current_card].to_i + 1)
      # If so, change completed to true and increment points of the user
      user_lesson.save
      user_lesson.next.update(locked: false)
      current_user.increment_points(user_lesson.lesson.points)
      current_user.save
    end
  end
end
