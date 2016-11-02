class PhasesController < ApplicationController
	before_action :set_phase, only: [:show, :edit, :update, :destroy]

	# GET /sessions/1
	# GET /sessions/1.json
	def show
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_phase
			@phase = Phase.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def phase_params
			params.fetch(:phase, {}).permit(:name)
		end
end
