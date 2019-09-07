class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @questions = Question.where(category_id: @category.id)
  end
end
