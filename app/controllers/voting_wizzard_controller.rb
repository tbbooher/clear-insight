class VotingWizzardController < ApplicationController
  include Wicked::Wizard
  steps :savings_information, :mutual_allocation, :share_it, :get_result

  def show
    @user = current_user
    if step == :get_result
        @stock_value = @user.stock_value
    end
    render_wizard
  end

  def update
    @user = current_user
    @user.attributes = user_params
    render_wizard @user
  end

  private

  def user_params
    params.require(:user).permit(:estimated_retirement_savings, :stocks_or_mutual_funds_percent)
  end

end
