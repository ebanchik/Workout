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

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render :show
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(
      name: params[:name] || @exercise.name,
      sets: params[:sets] || @exercise.sets,
      reps: params[:reps] || @exercise.reps,
      break: params[:break] || @exercise.break,
      style: params[:style] || @exercise.style,
    )
    render :show
  end
end
