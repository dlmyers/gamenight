class ScheduleController < ApplicationController
  def index
    @events = Event.order(:date)
    @invites = Invite.all
  end
end
