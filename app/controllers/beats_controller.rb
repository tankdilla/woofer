class BeatsController < ApplicationController
  before_action :set_beat, only: [:show, :edit, :update, :destroy]

  # GET /beats
  # GET /beats.json
  def index
    @beats = Beat.all
  end

  # GET /beats/1
  # GET /beats/1.json
  def show
  end

  # GET /beats/new
  def new
    @beat = Beat.new
  end

  # GET /beats/1/edit
  def edit
  end

  # POST /beats
  # POST /beats.json
  def create
    @beat = Beat.new(beat_params)

    respond_to do |format|
      if @beat.save
        format.html { redirect_to @beat, notice: 'Beat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @beat }
      else
        format.html { render action: 'new' }
        format.json { render json: @beat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beats/1
  # PATCH/PUT /beats/1.json
  def update
    respond_to do |format|
      if @beat.update(beat_params)
        format.html { redirect_to @beat, notice: 'Beat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @beat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beats/1
  # DELETE /beats/1.json
  def destroy
    @beat.destroy
    respond_to do |format|
      format.html { redirect_to beats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beat
      @beat = Beat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beat_params
      params.require(:beat).permit(:name, :owner, :media)
    end
end
