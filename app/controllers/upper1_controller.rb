class Upper1Controller < ApplicationController
  # def some_other_method
  #   copy_specific_exercises
  #   # rest of the method
  # end
  
  def upper1_exercises
    @source_exercises = Exercise.where(day: "Upper 1")
    @source_exercises.each do |exercise|
      Upper1.create!(
        name: exercise.name,
        sets: exercise.sets,
        reps: exercise.reps,
        break: exercise.break,
        style: exercise.style,
        day: exercise.day)
      rescue => e
        puts "Failed to create record: #{e.message}"
    end
    render :upper1
  end
  
  def upper2_exercises
    @source_exercises = Exercise.where(day: "Upper 2")
    @source_exercises.each do |exercise|
      Upper1.create!(
        name: exercise.name,
        sets: exercise.sets,
        reps: exercise.reps,
        break: exercise.break,
        style: exercise.style,
        day: exercise.day)
      rescue => e
        puts "Failed to create record: #{e.message}"
    end
    render :copy_specific_exercises
  end
end 