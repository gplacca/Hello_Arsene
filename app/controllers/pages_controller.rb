class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @team_id = current_user.teams.last
  end
end
