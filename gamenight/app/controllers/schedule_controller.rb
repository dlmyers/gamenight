class ScheduleController < ApplicationController
  def index
    @events = Event.order(:name)
  end
end
