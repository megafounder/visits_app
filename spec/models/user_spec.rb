require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'should return the user that was just created' do
    newuser = User.create name: 'troll', location_id: 1, visit_id: 1, premium: true
    expect(User.find(newuser.id)).to eq(newuser)
  end
end



