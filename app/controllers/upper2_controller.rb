class Upper2Controller < ApplicationController

  def upper2_exercises
    @source_exercises = Exercise.where(day: "Upper 2")
    @source_exercises.each do |exercise|
      Upper2.create!(
        name: exercise.name,
        sets: exercise.sets,
        reps: exercise.reps,
        break: exercise.break,
        style: exercise.style,
        day: exercise.day)
      rescue => e
        puts "Failed to create record: #{e.message}"
    end
    render :upper2_exercises
  end

  def index
    @exercises = Upper2.all
    respond_to do |format|
      format.json { render json: @exercises }
    end
  end

end 
