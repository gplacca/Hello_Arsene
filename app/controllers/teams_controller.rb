class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @training = Training.new
    @last_five_trainings = @team.trainings.order(:start_at).last(5)
    # @last_five_trainings_class = @last_five_trainings.class


    @players = Player.all
  end

  def edit
    @training = Training.all
  end
end
