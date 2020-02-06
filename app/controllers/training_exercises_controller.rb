class TrainingExercisesController < ApplicationController

  def new
    @training = Training.find(params[:id])
    # @exercise = Exercise.find(params[:exercise])
    @training_exercise = TrainingExercise.new
    @training_exercise.training = @training
    # @training_exercise.exercise = @exercise
  end

  def create
    @training = Training.find(params[:training_id])
    @exercise = Exercise.find(params[:training_exercise][:exercise])
    @training_exercise = TrainingExercise.new(training_exercise_params)
    @training_exercise.training = @training
    @training_exercise.exercise = @exercise
    if @training_exercise.save
      redirect_to edit_training_path(@training)
    else
      render :new
    end
  end

  private

  def training_exercise_params
    params.require(:training_exercise).permit(:start_at, :duration_in_minutes)
  end
end
