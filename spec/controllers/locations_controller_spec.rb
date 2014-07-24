require 'rails_helper'

RSpec.describe LocationsController, :type => :controller do
  describe "GET locations#index" do
    it "assigns @locations" do
      location = Location.create
      location_two = Location.create
      get :index
      expect(assigns(:locations)).to eq([location_two, location])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "has 200 as a response code" do
      get :index
      expect(response.response_code).to eql(200)
    end
  end

  describe "GET locations#show" do
    it "assigns @location" do
      location = Location.create
      get :show, id: location.id
      expect(assigns(:location)).to eq(location)
    end

    it "renders the show template" do
      location = Location.create
      get :show, id: location.id
      expect(response).to render_template('show')
    end

    it "has 200 as a response code" do
      location = Location.create
      get :show, id: location.id
      expect(response.response_code).to eql(200)
    end

    it "returns 404 error when no location found in the databse" do
      get :show, id: 666
      expect(response.response_code).to eql(404)
    end

    it "shows error page when response code is 404" do
      get :show, id: 666
      expect(response).to render_template('404')
    end

  end
end
