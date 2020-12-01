class Routine < ApplicationRecord
    has_many :entries
    has_many :users, through: :entries
    #belongs_to :user
    has_many :routine_exercises
    has_many :exercises, through: :routine_exercises
end