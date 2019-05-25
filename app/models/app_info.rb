class AppInfo < ApplicationRecord
	#belongs_to :classification
	has_one :classification
	has_many :permissions
	has_many :services
	has_many :receivers
end
