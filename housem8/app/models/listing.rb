class Listing < ApplicationRecord
	mount_uploader :photo, ListingUploader
	belongs_to:house_owner
	has_many:house_seekers
end
