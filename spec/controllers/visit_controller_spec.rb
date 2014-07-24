require 'rails_helper'

RSpec.describe VisitController, :type => :controller do
  describe 'GET visits#index' do
    it 'assigns @visits' do
      visit = Visit.create
      get :visit
      expect(assigns(:visit)).to eq([visit])
    end

    it 'renders the right template' do
    end

    it 'returns a 200 status code' do
    end
  end
end
