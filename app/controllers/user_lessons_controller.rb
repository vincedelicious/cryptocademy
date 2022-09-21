class UserLessonsController < ApplicationController
  def update
    user_lesson = UserLesson.find(params[:id])
    p user_lesson
    # Update card status of the user lesson to card being currently view

    # Check if card_status is equal to total number of cards of lesson

    # If so, change completed to true and increment points of the user

  end
end
