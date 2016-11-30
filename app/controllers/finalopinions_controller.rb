class FinalopinionsController < ApplicationController

	def create
		# @finalopinion = Finalopinion.new(finalphase: Finalphase.find(params[:finalopinion][:finalphase]), music: Music.find(params[:finalopinion][:music]), pictures: [Picture.find(params[:finalopinion][:pictures0]), Picture.find(params[:finalopinion][:pictures1]), Picture.find(params[:finalopinion][:pictures2])])

		@finalopinion = Finalopinion.create
		@finalopinion.finalphase = Finalphase.find(params[:finalopinion][:finalphase])
		@finalopinion.music      = Music.find(params[:finalopinion][:music])
		@finalopinion.pictures   = [Picture.find(params[:finalopinion][:pictures0]), Picture.find(params[:finalopinion][:pictures1]), Picture.find(params[:finalopinion][:pictures2])]

		if @finalopinion.save
			redirect_to :back
		else
			redirect_to :back
		end
	end

	private
	# Never trust parameters from the scary internet, only allow the white list through.
	def session_params
		params.permit(:finalphase, :music, :pictures)
	end
end