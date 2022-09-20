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

  # {
  #   question: "What is a Bitcoin?",
  #   choice1: "A coin of some sort",
  #   choice2: "A bit of a coin",
  #   choice3: "Money$$$",
  #   choice4: "Cryptocurrency",
  #   answer: 4
  # }
end
