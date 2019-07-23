require 'rails_helper'

RSpec.describe EmWebsiteController, type: :controller do

  describe 'GET index' do
    it 'assigns @quote' do
      quote1 = FactoryBot.create(:quote, id: 3, order: 1)
      quote2 = FactoryBot.create(:quote, id: 2, order: 2)
      quote3 = FactoryBot.create(:quote, id: 1, order: 3)
      get :index
      expect(assigns(:quotes)).to eq([quote1, quote2, quote3])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end