# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    it 'redirect to users index' do
      @user = create(:user)
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
