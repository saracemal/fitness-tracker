class EntriesController < ApplicationController

    def index
        @entries = Entry.all
    end

    def destroy
        @entry = Entry.destroy
    end

    
end