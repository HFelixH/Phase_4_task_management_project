require 'rails_helper'
require_relative '../support/devise'

RSpec.describe ProjectsController, type: :controller do
  describe 'GET /' do
    login_user

    context 'login user and re-direct to index' do
      it 'should return 200:OK' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end
