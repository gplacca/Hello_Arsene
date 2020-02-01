class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @training = Training.new
  end
end
