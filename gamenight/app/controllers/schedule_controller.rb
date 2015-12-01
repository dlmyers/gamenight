class ScheduleController < ApplicationController
  def index
    @events = Event.order(name: :desc)
    @invites = Invite.all
  end
end
