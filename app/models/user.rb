class User < ApplicationRecord
    has_many :entries
    has_many :routines, through: :entries
end