class Finalphase < ActiveRecord::Base
	belongs_to :session
	belongs_to :music
	has_one :finalopinion, dependent: :destroy
	has_many :pictures
end
