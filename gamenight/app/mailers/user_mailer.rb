class UserMailer < ApplicationMailer
	default from: 'gamenight@example.com'

	def welcome(user, generated_password, url)
		@user = user
		@created_by = User.find(user.created_by_id)
		@generated_password = generated_password
		@url = url
		mail(to: @user.email, subject: 'Welcome to Game Night!')
	end

	def invite(invite)
		@invite = invite
		@event = @invite.event
		@user = @invite.user
		@event_creator = @event.user
		mail(to: @user.email, subject: "Game Night - You're invited to #{@event.name}!")
	end


end