class Club < ActiveRecord::Base
	has_many :photos, as: :imageable
	geocoded_by :address
	after_validation :geocode
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

 
end
