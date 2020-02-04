class TrainingExercisesController < ApplicationController

  def new
    @training = Training.find(params[:id])
    @exercise = Exercise.find(params[:exercise])
    @training_exercise = TrainingExercise.new
    @training_exercise.training = @training
    @training_exercise.exercise = @exercise
  end

  def create
    @training = Training.find(params[:id])
    @exercise = Exercise.find(params[:exercise])
    @training_exercise = TrainingExercise.new(training_exercise_params)
    @training_exercise.training = @training
    @training_exercise.exercise = @exercise
    @training_exercise.save
  end



  private

  def training_exercise_params
    params.require(:training_exercise).permit(:start_at, :duration_in_minutes)
  end
end
