class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

  def stock_value_current_law
    self.estimated_retirement_savings + self.stocks_or_mutual_funds_percent
  end

  def stock_value_trump_policies
    self.estimated_retirement_savings + self.stocks_or_mutual_funds_percent
  end

  def stock_value_trump_policies_resisted
    self.estimated_retirement_savings + self.stocks_or_mutual_funds_percent
  end

end
