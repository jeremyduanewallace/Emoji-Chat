class HomeController < ApplicationController
  def index
    @current_user = current_user
  end

  def need
    @current_user = current_user
  end

  def about
    @current_user = current_user
  end
end
