class CreateRoutineExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :routine_exercises do |t|
      t.integer :session_id
      t.integer :exercise_id
    end
  end
end
