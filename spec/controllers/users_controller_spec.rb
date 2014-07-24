require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe '' do
    it 'shows list of users in index' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
        get :index
        expect(response).to render_template('index')
    end

    it 'show the user if exists' do
        newuser = User.create name: 'troll', location_id: 1, visit_id: 1, premium: true
        get :index
        expect(assigns(:users).first).to eql(newuser)
    end

    it 'renders user creation template' do
        get :new
        expect(response).to render_template('new')
    end



  end
end
