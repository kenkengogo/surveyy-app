class Question < ApplicationRecord
  
  CATEGORIES = ["会社", "学校", "趣味", "恋愛", "人生", "料理", "社会", "政治", "カルチャー", "家族", "お店", "服", "SNS"]
  has_many :votes, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user, dependent: :destroy, optional: true
  belongs_to :category, optional: true

  def vote_user(id, num)
    votes.find_by(user_id: id, ballot: num)
  end

  validates :title, presence: true
  validates :text, presence: true
  validates :word1, presence: true
  validates :word2, presence: true
end
