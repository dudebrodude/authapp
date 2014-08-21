class Checkin < ActiveRecord::Base
	has_merit
	belongs_to :user
end
