class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render :index
  end

  def create
    @exercise = Exercise.create(
      name: params[:name],
      sets: params[:sets],
      reps: params[:reps],
      break: params[:break],
      style: params[:style],
    )
    render :show
  end
end
