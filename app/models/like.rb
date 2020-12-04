class Like < ApplicationRecord
    #eventually will use this to increment likes to posts and display users 
    #who have liked

    belongs_to :user
    belongs_to :routine

    def like
        @entry = Entry.find(params[:id])
        @entry.likes += 1
        @entry.save
    
        redirect_to entry_path(@entry)
      end

end