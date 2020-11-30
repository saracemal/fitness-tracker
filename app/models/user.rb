class User < ApplicationRecord
    has_many :entries
    has_many :routines, through: :entries

    validates :name, presence: true 
    validates :name, uniqueness: true
end