class PhasesController < ApplicationController
	before_action :set_phase, only: [:show, :edit, :update, :destroy]

	# GET /phase/1
	# GET /phase/1.json
	def show
		if @phase.opinions.last.mark
		 	redirect_to @phase.session
		end 
	end

	# # PATCH/PUT /phase/1
	# # PATCH/PUT /phase/1.json
	# def update
	# 	respond_to do |format|
	# 		if @phase.update(session_params)
	# 			format.html { redirect_to @phase, notice: 'Session was successfully updated.' }
	# 			format.json { render :show, status: :ok, location: @phase }
	# 		else
	# 			format.html { render :edit }
	# 			format.json { render json: @phase.errors, status: :unprocessable_entity }
	# 		end
	# 	end
	# end

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