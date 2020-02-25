class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user.nil?
      @path = new_user_session_path
    else
      @path = team_path(current_user.teams.last)
    end
  end
end
