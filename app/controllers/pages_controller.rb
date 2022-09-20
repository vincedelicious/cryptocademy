class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :landing

  def landing
  end

  def dashboard
    @user = current_user
  end

  def quiz
  end
end
