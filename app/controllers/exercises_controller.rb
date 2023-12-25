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
      break_t: params[:break_t],
      style: params[:style],
      id: params[:id],
      day: params[:day]
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
      break_t: params[:break_t] || @exercise.break_t,
      style: params[:style] || @exercise.style,
      id: params[:id] || @exercise.id,
      day: params[:day] || @exercise.day
    )
    render :show
  end

  # def move
  #   @source_exercise = Exercise.find(id: params[:id])
  #   Upper2.create(source_exercise.attributes)
  #   redirect_to 'exercises#index', notice: 'Exercise copied successfully.'
  # end

end
