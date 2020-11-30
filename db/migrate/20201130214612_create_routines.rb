class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :user_id
      t.integer :routine_exercise_id
    end
  end
end
