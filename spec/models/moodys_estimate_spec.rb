require 'rails_helper'

RSpec.describe MoodysEstimate, type: :model do
  before(:each) {
    MoodysEstimate.load_data
    @m = MoodysEstimate.first
  }
  it 'should be able to load data' do
    expect(MoodysEstimate.all.size).to be > 0
  end
  it 'should have the correct impact' do
    expect(@m.impact).to eq(-460)
  end
  it 'should have the correct index' do
    expect(@m.sp_index).to eq(1966.5)
  end
end
