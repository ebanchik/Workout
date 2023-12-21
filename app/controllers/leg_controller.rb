class LegController < ApplicationController

  def leg_exercises
    @source_exercises = Exercise.where(day: "legs")
    @source_exercises.each do |exercise|
      Leg.create!(
        name: exercise.name,
        sets: exercise.sets,
        reps: exercise.reps,
        break: exercise.break,
        style: exercise.style,
        day: exercise.day)
      rescue => e
        puts "Failed to create record: #{e.message}"
    end
    render :leg_exercises
  end

  def index
    @exercises = Leg.all
    respond_to do |format|
      format.json { render json: @exercises }
    end
  end

end
