class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_lessons
  after_create :create_user_lessons

  def increment_points(finished_lesson_points)
    self.points += finished_lesson_points
  end

  private

  def create_user_lessons
    Lesson.all.each do |lesson|
      UserLesson.create(
        user: self,
        lesson: lesson
      )
    end
  end
end
