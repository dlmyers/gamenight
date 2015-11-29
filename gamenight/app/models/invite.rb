class Invite < ActiveRecord::Base
	belongs_to :friend
	belongs_to :event

	INVITED = 0
	ACCEPTED = 1
	DECLINED = 2
end
