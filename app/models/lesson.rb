class Lesson < ApplicationRecord
  has_many :cards, dependent: :destroy
  has_many :user_lessons, dependent: :destroy
  has_many :questions, dependent: :destroy
end
