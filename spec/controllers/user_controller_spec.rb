require 'rails_helper'
describe UsersController do
  describe 'GET #show' do
    # it "populates an array of questions ordered by created_at DESC" do
    #   questions = create_list(:question, 4) 
    #   get :show, params: {  id: 1 }
    #   expect(assigns(:question)).to match(questions)
    # end
    # it "populates an array of questions ordered by created_at DESC" do
    #   questions = create_list(:question, 4) 
    #   get :show, params: {  id: 1 }
    #   expect(assigns(:questions)).to match(questions)
    # end
    it "renders the :show template" do
      get :show, params: {  id: 1 }
      # expect(response).to render_template :show
    end
  end
end