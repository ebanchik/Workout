class ShoulderController < ApplicationController

  def shoulder_exercises
    @source_exercises = Exercise.where(day: "Shoulders")
    @source_exercises.each do |exercise|
      Shoulder.create!(
        name: exercise.name,
        sets: exercise.sets,
        reps: exercise.reps,
        break: exercise.break,
        style: exercise.style,
        day: exercise.day)
      rescue => e
        puts "Failed to create record: #{e.message}"
    end
    render :shoulder_exercises
  end

  def index
    @exercises = Shoulder.all
    respond_to do |format|
      format.json { render json: @exercises }
    end
  end
  
end
