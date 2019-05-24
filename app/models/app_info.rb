class AppInfo < ApplicationRecord
	#belongs_to :classification
	has_one :classification
	has_many :permissions
end
