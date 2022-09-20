class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    @cards = Card.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @cards = Card.where(lesson: @lesson)
  end

  def search
    if params[:query].present?
      sql_query = 'title ILIKE :query OR description ILIKE :query'
      @lessons = Lesson.where(sql_query, query: "%#{params[:query]}%")
    else
      @lessons = []
    end
  end
end
