class VotingWizzardController < ApplicationController
  include Wicked::Wizard
  steps :input_information, :get_result
end
