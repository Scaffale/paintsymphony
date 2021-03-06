class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy, :download, :pause]

  # GET /sessions
  # GET /sessions.json
  def index
    @sessions = Session.all
  end

  # GET /session/download
  def download_all
    send_data Session.to_csv, filename: "Sessioni.csv", :type=>"application/csv", :x_sendfile=>true
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
    # Redirect to phase se l'ultima fase non ha opinione
    unless @session.phases.last.opinions.last.mark
      @session.phases.all.each do |phase|
        unless phase.opinions.last.mark
          redirect_to phase
          break
        end
      end
    end
    if @session.phases.last.opinions.last.mark
      unless @session.finalphases.first.finalopinion
        render :pause
        return
      end
      @session.finalphases.all.each do |finalphase|
        unless finalphase.finalopinion
          redirect_to finalphase
          break
        end
      end
    end
  end

  def pause
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # GET /sessions/1/download
  def download
    send_data @session.to_csv, filename: "Sessione #{@session.id} #{@session.name}.csv", :type=>"application/csv", :x_sendfile=>true
  end

  # POST /sessions
  # POST /sessions.json
  def create
    @session = Session.new(session_params)

    respond_to do |format|
      if @session.save
        format.html { redirect_to @session }
        format.json { render :show, status: :created, location: @session }
      else
        format.html { render :new }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
        format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    @session.destroy
    respond_to do |format|
      format.html { redirect_to sessions_url, notice: 'Session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.fetch(:session, {}).permit(:name)
    end
end
