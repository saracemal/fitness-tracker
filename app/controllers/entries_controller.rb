class EntriesController < ApplicationController

    def index
        @entries = Entry.all
    end

    def destroy
        @entry = Entry.destroy
    end

    def new
    end

    def create
        entry = Entry.create(entry_params)
    end


    private
    def entry_params
        params.require(:entry).permit(:user_id, :routine_id)
    end

    
end