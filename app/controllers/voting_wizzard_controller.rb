class VotingWizzardController < ApplicationController
  include Wicked::Wizard
  steps :input_information, :get_result

  def show
    @user = current_user
    render_wizard
  end
end
