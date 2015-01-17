class ChirpsController < ApplicationController
  before_action :set_chirp, only: [:show, :edit, :update, :destroy]

  # GET /chirps
  # GET /chirps.json
  def index
    @chirps = Chirp.all
  end

  # GET /chirps/1
  # GET /chirps/1.json
  def show
  end

  # GET /chirps/new
  def new
    @chirp = Chirp.new
  end

  # POST /chirps
  # POST /chirps.json
  def create
    @chirp = Chirp.new(chirp_params)

    respond_to do |format|
      if @chirp.save
        format.html { redirect_to @chirp, notice: 'Chirp was successfully created.' }
        format.json { render :show, status: :created, location: @chirp }
      else
        format.html { render :new }
        format.json { render json: @chirp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chirps/1
  # DELETE /chirps/1.json
  def destroy
    @chirp.destroy
    respond_to do |format|
      format.html { redirect_to chirps_url, notice: 'Chirp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chirp
      @chirp = Chirp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chirp_params
      params.require(:chirp).permit(:text)
    end
end
