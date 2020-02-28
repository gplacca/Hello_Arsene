class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @training = Training.new
    @last_five_trainings = @team.trainings.last(5).sort_by { |e| e[:start_at]}
    # @last_five_trainings_class = @last_five_trainings.class


    @players = Player.all
  end

  def edit
    @training = Training.all
  end
end
