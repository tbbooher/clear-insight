describe User do

  before(:each) { @user = FactoryGirl.create(:user) }

  it { should respond_to(:name) }

  context 'When I have a user' do

    it 'should have a estimated_retirement_savings' do
      expect(@user.estimated_retirement_savings).to be > 0
    end

    it 'should have a stocks_or_mutual_funds_percent' do
      expect(@user.stocks_or_mutual_funds_percent).to be > 0
    end

    it 'should accurately calculate the stock value' do
      expect(@user.stock_value).to eq(30)
    end
  end

end
