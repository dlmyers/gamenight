class Event < ActiveRecord::Base
	has_many :invites
	has_many :friends, through: :invites
    validates :name, :date, :location, presence: true
end
