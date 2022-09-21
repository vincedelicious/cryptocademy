class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    @cards = Card.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @cards = Card.where(lesson: @lesson)
    @questions = Question.where(lesson: @lesson)
    @answers = Answer.where(question: @questions)
    @user_lesson = UserLesson.find_by(lesson: @lesson, user: current_user)
  end

  def search
    if params[:query].present?
      sql_query = 'title ILIKE :query OR description ILIKE :query'
      @lessons = Lesson.where(sql_query, query: "%#{params[:query]}%")
    else
      @lessons = []
    end
  end

  def quiz
    @lesson = Lesson.find(params[:id])
    @questions = Question.includes(:answers).where(lesson: @lesson)
    @info = []
    @questions.each do |q|
      hash = {
        question: q.content,
      }
      q.answers.each do |a|
        hash["choice#{a.option}".to_sym] = a.content
        hash[:answer] = a.option if a.correct?
      end
      @info << hash
    end
    @info = @info.to_json
  end
end
