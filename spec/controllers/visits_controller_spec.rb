require 'rails_helper'

RSpec.describe VisitsController, :type => :controller do
  describe 'GET visits#index' do
    xit 'assigns @visits' do
      visit = Visit.create
      get :visit
      expect(assigns(:visit)).to eq([visit])
    end

    xit 'renders the right template' do
    end

    xit 'returns a 200 status code' do
    end
  end
end
