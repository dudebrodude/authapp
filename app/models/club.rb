class Club < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode
	scope :featured, -> { where(:featured => true) }
end
