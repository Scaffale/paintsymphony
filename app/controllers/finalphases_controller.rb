class FinalphasesController < ApplicationController
	before_action :set_finalphase, only: [:show, :edit, :update, :destroy]

	# GET /phase/1
	# GET /phase/1.json
	def show
		if @finalphase.finalopinion
		 	debugger
		 	redirect_to @finalphase.session
		end 
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_finalphase
			@finalphase = Finalphase.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def phase_params
			params.fetch(:finalphase, {})
		end
end