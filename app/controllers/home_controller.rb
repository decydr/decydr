class HomeController < ApplicationController
  def index
    @events = Event.today
  end
end
