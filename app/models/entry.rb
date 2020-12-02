class Entry < ApplicationRecord 
    belongs_to :user
    belongs_to :routine
    # has_many :likes (?)


    #def most_recent_entry
        # Entry.order("created_at DESC")
    #end 

end