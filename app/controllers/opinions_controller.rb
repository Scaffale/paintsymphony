class OpinionsController < ApplicationController

	def update
		@opinion = Opinion.find(params[:id])
		@opinion.mark = params[:opinion][:mark]
		@opinion.save
		redirect_to :back
	end
end
