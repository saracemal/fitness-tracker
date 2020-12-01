class User < ApplicationRecord
    #has_many :entries
    #has_many :routines, through: :entries
    has_many :routines

    # validates :name, presence: true { "must be created with a name"}
    # validates :name, uniqueness: true {"Username is already in use"}
end