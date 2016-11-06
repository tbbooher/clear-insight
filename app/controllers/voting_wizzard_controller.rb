class VotingWizzardController < ApplicationController
  include Wicked::Wizard
  steps :savings_information, :mutual_allocation, :share_it, :get_result

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.attributes = params[:user]
    render_wizard @user
  end

end
