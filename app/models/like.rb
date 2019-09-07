class Like < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :question, optional: true
  validates :user_id, presence: true
  validates :question_id, presence: true 
end
