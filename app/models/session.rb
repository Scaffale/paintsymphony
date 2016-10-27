class Session < ActiveRecord::Base
	has_many :Phases, dependent: :destroy
end
