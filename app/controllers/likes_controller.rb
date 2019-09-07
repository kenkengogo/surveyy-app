class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, question_id: params[:question_id])
    @likes = Question.where(question_id: params[:question_id])
    @questions = Question.all
    redirect_to controller: 'questions', action: 'index'
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, question_id: params[:question_id], id: params[:id])
    like.destroy
    @likes = Question.where(question_id: params[:question_id])
    @questions = Question.all
    redirect_to controller: 'questions', action: 'index'
  end

end
