class Entry < ApplicationRecord #joiner table between User and Routine (?)
    belongs_to :user
    belongs_to :routine
    # has_many :likes (?)

    #validates_presence_of :title, :description
    #validates :title, uniqueness: { case_sensitive: false, message: "is already in use. Create a new title."}

    #def top_5_entries
    #end 
end