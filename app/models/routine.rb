class Routine < ApplicationRecord
    has_many :entries
    has_many :users, through: :entries
    belongs_to :user, optional: true
    has_many :routine_exercises
    has_many :exercises, through: :routine_exercises
    #has_many :likes, dependent: :destroy <-- likes get deleted if either the user or the routine gets deleted

    validates :name, presence: true
    validates :name, uniqueness: true
end