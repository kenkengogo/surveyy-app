require 'rails_helper'

describe QuestionsController do
  describe 'GET #index' do
    it "populates an array of questions ordered by created_at DESC" do
      questions = create_list(:question, 4) 
      get :index
      expect(assigns(:question)).to match(questions.sort{ |a, b| b.id <=> a.id } )
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end
end

describe QuestionsController do
  describe 'GET #new' do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end
end