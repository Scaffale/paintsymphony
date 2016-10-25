class DataController < ApplicationController
	before_action :check_for_lockup
	
	def settings
	end
end
