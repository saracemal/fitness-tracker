class PagesController < ApplicationController
    skip_before_action :authorized, :find_current_user

    def home
    end
  end