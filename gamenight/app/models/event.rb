class Event < ActiveRecord::Base
	belongs_to :user

	has_many :invites
	has_many :users, through: :invites

	 has_many :comments
	 validates :name, :date, :location, :user_id, presence: true
	 validate :event_date_cannot_be_in_the_past
	 
	 def event_date_cannot_be_in_the_past
	        errors.add(:date, "cannot be in the past.") if
	            !date.blank? and date < Time.now
	 end

end
