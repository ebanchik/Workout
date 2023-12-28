class Upper1Controller < ApplicationController
  
  def upper1_exercises
    @source_exercises = Exercise.where(day: "Upper 1")
    @source_exercises.each do |exercise|
      Upper1.create!(
        name: exercise.name,
        sets: exercise.sets,
        reps: exercise.reps,
        break: exercise.break_t,
        style: exercise.style,
        id: exercise.id,
        day: exercise.day)
      rescue => e
        puts "Failed to create record: #{e.message}"
    end
    render :upper1

  end

  def index
    @exercises = Upper1.all
    respond_to do |format|
      format.json { render json: @exercises }
    end
  end

end