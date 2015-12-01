class Invite < ActiveRecord::Base
	belongs_to :user
	belongs_to :event

    validates_uniqueness_of :user_id, scope: :event_id, :message => "is already invited to this event"

	INVITED = 0
	ACCEPTED = 1
	DECLINED = 2
end
