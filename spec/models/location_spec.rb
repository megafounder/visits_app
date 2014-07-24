require 'rails_helper'

RSpec.describe Location, :type => :model do
  it 'iron_find should return the same as find' do
    l = Location.create name: 'Home', city: 'Barcelona'
    expect(Location.find(l.id)).to eq(Location.iron_find(l.id))
  end

  it 'should return total visits in that Location in a given month' do
    place = Location.create name: 'Ironhack', city: 'Madrid'
    visit = Visit.create location_id: place.id, from_date: Time.now + 5.months, to_date: Time.now + 5.months + 1.days, user_name: 'troll'
    Visit.create location_id: place.id, from_date: Time.now + 5.months, to_date: Time.now + 5.months + 1.days, user_name: 'troll'
    Visit.create location_id: place.id, from_date: Time.now + 7.months, to_date: Time.now + 7.months + 1.days, user_name: 'troll'
    Visit.create location_id: place.id, from_date: Time.now + 6.months, to_date: Time.now + 6.months + 1.days, user_name: 'troll'
    expect(place.total_visits_in_month_of_year(12, 2014)).to eql(2)
  end

  it 'should return invalid name when name field is empty' do
    l = Location.create city: 'Malaga'
    expect(l.valid?).to eq(false)
  end

  it 'should return valid name when name field has less than 30 characters' do
    l = Location.create name: 'MalagaMalagaMalagaMalagaMalag', city: 'Barcelona'
    expect(l.valid?).to eq(true)
  end

  it 'should return invalid name when name field has more than 30 characters' do
    l = Location.create name: 'MalagaMalagaMalagaMalagaMalaga123', city: 'Barcelona'
    expect(l.valid?).to eq(false)
  end

end
