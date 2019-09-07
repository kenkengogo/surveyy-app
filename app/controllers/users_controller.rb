class UsersController < ApplicationController
  def show
    @questions = Question.where(user_id:current_user.id)
    @likes = Like.where(user_id:current_user.id)
    @question_likes = @likes.map { |like| like.question }
  end
end
