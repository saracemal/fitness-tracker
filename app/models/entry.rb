class Entry < ApplicationRecord #joiner table between User and Routine (?)
    belongs_to :user
    belongs_to :routine
    # has_many :likes (?)


    #def top_5_entries
    #end 
end