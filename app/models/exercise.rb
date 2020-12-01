class Exercise < ApplicationRecord
    has_many :routine_exercises
    has_many :routines, through: :routine_exercises

    # validates_presence_of :name, :difficulty
    # # validates :difficulty, inclusion: { in: %w(beginner intermediate advanced),
    # # message: "%{value} is not a valid difficulty" }
end