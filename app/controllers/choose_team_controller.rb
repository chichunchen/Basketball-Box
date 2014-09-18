class ChooseTeamController < ApplicationController
  def index
  	@teams = Team.all
  end
end
