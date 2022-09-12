class Lesson < ApplicationRecord
  has_many :cards
  has_many :user_lessons
end
