class VotingWizzardController < ApplicationController
  include Wicked::Wizard
  steps :savings_information, :mutual_allocation, :share_it, :get_result

  def show
    @user = current_user
    render_wizard
  end
end
