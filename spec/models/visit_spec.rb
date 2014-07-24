require 'rails_helper'

RSpec.describe Visit, :type => :model do
  it 'should return the visit that was just created' do
    newvisit = Visit.create from_date: Time.now + 1.hours, to_date: Time.now + 2.hours, user_name: 'Jonathan', location_id: 1
    expect(Visit.find(newvisit.id)).to eq(newvisit)
  end

  it 'should validate the user name characters' do
    newvisit = Visit.new from_date: Time.now + 1.hours, to_date: Time.now + 2.hours, user_name: 'sss', location_id: 1
    expect(newvisit.valid?).to eql(true)
  end
end
