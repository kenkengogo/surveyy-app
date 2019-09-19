class VotesController < ApplicationController
  def create
    @vote = Vote.create(user_id: current_user.id, question_id: params[:question_id], ballot: params[:ballot])
    if @vote.save
      redirect_to questions_path
    end 
  end

  def destroy
    vote = Vote.find_by(user_id: current_user.id, question_id: params[:question_id], id: params[:id])
    vote.destroy
    redirect_to questions_path
  end
  
end
