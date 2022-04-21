require 'rails_helper'

RSpec.describe TeachersController, 'GET #index' do
  before do
    create_list(:teacher, 60)
  end
  context 'render teachers list' do
    it 'renders all teachers' do
      get :index
      expect(response).to have_http_status(:ok)
      expect(assigns(:teachers).count).to eq 25
    end

    it 'renders all teachers with pagination' do
      get :index, params: { page: 2 }
      expect(response).to have_http_status(:ok)
      expect(assigns(:teachers).count).to eq 25
      expect(assigns(:teachers).current_page).to eq 2
    end
  end
end
