require 'rails_helper'

RSpec.describe MoodysEstimate, type: :model do
  it 'should be able to load data' do
    MoodysEstimate.load_data
    expect(MoodysEstimate.all.size).to be > 0
  end
end
