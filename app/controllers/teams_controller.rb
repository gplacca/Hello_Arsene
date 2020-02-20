class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @training = Training.new
    @last_five_trainings = @team.trainings.last(5)

    @players = Player.all
  end

  def edit
    @training = Training.all
  end
end
