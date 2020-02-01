class TrainingsController < ApplicationController
  def index
  end

  def create
    @team = Team.find(params[:team_id])
    @training = Training.new(training_params)
    @training.team = @team
    @training.save

    redirect_to team_path(@team)
  end

  def edit
    @exercises = Exercise.all
    @team = Team.find(params[:team_id])
    @training = Training.new(training_params)
    @training.team = @team
    @training.save


  end

  private

  def training_params
    params.require(:training).permit(:name, :start_at, :duration_in_minutes)
  end
end
