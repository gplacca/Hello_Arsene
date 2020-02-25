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
    @training_exercises = TrainingExercise.all
    if params[:search].present?
      @exercises = Exercise.search_by_name_and_category(params[:search])
    else
      @exercises = Exercise.all
    end
    @training = Training.find(params[:id])
    @training_exercise = TrainingExercise.new

    @number_of_exercises = @training.training_exercises.count
  end

  def show
    @training = Training.find(params[:id])
    @training_exercises = @training.training_exercises.all
    @players = Player.all
  end

  private

  def training_params
    params.require(:training).permit(:name, :start_at, :duration_in_minutes)
  end
end
