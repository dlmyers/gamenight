module InvitesHelper
	def invite_status
		[["Invited", Invite::INVITED], ["Accepted", Invite::ACCEPTED], ["Declined", Invite::DECLINED]]
	end
	def status_options
		options_for_select([["Invited", Invite::INVITED], ["Accepted", Invite::ACCEPTED], ["Declined", Invite::DECLINED]])
	end
end
