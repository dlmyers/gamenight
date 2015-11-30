class Event < ActiveRecord::Base
	has_many :invites
	has_many :friends, through: :invites
 has_many :comments
 belongs_to :users
 validates :name, :date, :location, :user_id, presence: true
 
    
     # would need to validate timeliness for event date > https://github.com/adzap/validates_timeliness
    
    # do we need to get the current_user ID here  
end
