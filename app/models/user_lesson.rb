class UserLesson < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  def increment_card_status?(current_card)
    if self.card_status < current_card
      self.card_status = current_card
      if finished_cards?
        self.completed = true
      else
        false
      end
    end
  end

  def finished_cards?
    card_status == lesson.cards.count
  end

  def next
    UserLesson.find(id + 1)
  end
end
