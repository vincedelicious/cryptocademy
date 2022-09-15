class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @cards = Card.where(lesson: @lesson)
  end
end
