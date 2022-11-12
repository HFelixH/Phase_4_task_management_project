require 'rails_helper'
require_relative '../support/devise'

RSpec.describe ProjectsController, type: :controller do
  describe 'GET /' do
    login_use
    context 'login user and re-direct to index' do
      it 'should return 200:OK' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end

# RSpec.describe ProjectsController, type: :controller do
#   before :each do
#     @user = FactoryBot.create(:user)
#   end

#   let(:attributes) do 
#     { user: @user, 
#       name: 'Testing', 
#       description: 'Testing is important and it very essential' 
#     }
#   end

#   it 'renders the show template' do
#     project = Project.create!(attributes)
#     get :show, id: project.id
#     expect(response).to render_template(:show)
#   end
# end
