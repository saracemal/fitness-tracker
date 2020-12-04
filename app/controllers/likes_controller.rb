class LikesController < ApplicationController

  before_action :find_routine
#   before_action :find_like, only: [:destroy]

  def new
  end

  def create
    @routine.likes.create(user_id: @current_user.id)
    if already_liked?
        flash[:notice] = "You can't like more than once"
      else
        @routine.likes.create(user_id: @current_user.id)
      end
    redirect_to routine_path(@routine)
  end

#     def destroy
#     if !(already_liked?)
#       flash[:notice] = "Cannot unlike"
#     else
#       @like.destroy
#     end
#     redirect_to routine_path(@routine)
#   end

#   def find_like
#     @like = @routine.likes.find(params[:id])
#  end

  private

  def find_routine
    @routine = Routine.find(params[:routine_id])
  end

  def already_liked?
    Like.where(user_id: @current_user.id, routine_id:
    params[:routine_id]).exists?
  end




end