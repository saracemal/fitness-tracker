class EntriesController < ApplicationController

    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find(params[:id])
    end

    def destroy
        @entry = Entry.find(params[:id])
        @entry.destroy

        redirect_to entries_path

    end

    def new
        @entry = Entry.new
    end

    def create
        entry = Entry.create(entry_params)

        if entry.valid?
            redirect_to entry_path(entry)
        else
            flash[:entry_errors] = entry.errors.full_messages
            redirect_to new_entry_path
        end
    end

    def edit
        @entry = Entry.find(params[:id])
    end

    def update
        @entry = Entry.find(params[:id])
        @entry.update(entry_params)

        redirect_to entry_path(@entry)
    end

    private
    def entry_params
        params.require(:entry).permit(:title, :user_id, :routine_id, :description)
    end

end