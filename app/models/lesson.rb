class Lesson < ApplicationRecord
  has_many :cards, dependent: :destroy
  has_many :user_lessons
  has_many :questions
end
