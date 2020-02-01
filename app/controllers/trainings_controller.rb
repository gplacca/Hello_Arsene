class TrainingsController < ApplicationController

  def index
  end

  def create
    team = Team.find(params[:team_id])
    @training = Training.new(training_params)
    @training.team = team
    @training.save
    if @training.save
      redirect_to edit_training_path(@training)
    else
      redirect_to team_path(team)
    end
  end

  def edit
    @displayed_exercises = []
    @exercises = Exercise.all
    @exercises.each do |exercise|
      if exercise.category == "Phases offensives"
        @displayed_exercises << exercise
      else
      end
  end


    end

    @training = Training.find(params[:id])
    # @team = Team.find(params[:team_id])
    # @training = Training.new(training_params)
    # @training.team = @team
    # @training.save
  end

  private

  def training_params
    params.require(:training).permit(:name, :start_at, :duration_in_minutes)
  end
end
