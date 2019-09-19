class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order('id DESC').limit(8)
    @question_ids =Like.group(:question_id).where("created_at between '1.month.ago' and '#{Date.today} 23:59:59'").order('count_question_id DESC').limit(8).count(:question_id).keys
    @ranking = @question_ids.map{|id| Question.find(id)}
  end

  def new
    @question = Question.new
    @categories = Category.all.order('id DESC')
  end

  def create
    @question = Question.create(question_params)
    if @question.save!
      redirect_to questions_path
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
    @categories = Category.all.order('id DESC')
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
      redirect_to questions_path
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.user_id = current_user.id
      @question.destroy
      redirect_to questions_path
    end
  end


  def search
  end


  def question_params
    params.require(:question).permit(:title, :text, :word1, :word2, :word3, :word4, :word5, :category_id).merge(user_id: current_user.id)
  end
end
