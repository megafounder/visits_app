require 'rails_helper'

RSpec.describe 'LocationsRouting', :type => :routing do
  it 'routes to location index' do
    expect(get: '/locations').to route_to('locations#index')
  end

  it'routes to location with id' do
    expect(get: '/locations/999').to route_to(controller: 'locations', action: 'show', id: '999')
  end

end
