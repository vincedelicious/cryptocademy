class UserLessonsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def add_points
    p "hello"
    user_lesson = UserLesson.find(params[:id])
    p user_lesson
    # Update card status of the user lesson to card being currently view
    # Check if card_status is equal to total number of cards of lesson
    if user_lesson.increment_card_status?(params[:current_card].to_i + 1)
      # If so, change completed to true and increment points of the user
      p user_lesson
      user_lesson.save
      current_user.increment_points(user_lesson.lesson.points)
      current_user.save
      p current_user
    end
    p user_lesson
  end
end
