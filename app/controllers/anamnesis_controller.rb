class AnamnesisController < ApplicationController
  before_action :set_anamnesi, only: [:show, :edit, :update, :destroy]

  # GET /anamnesis
  # GET /anamnesis.json
  def index
    @anamnesis = Anamnesi.all
  end

  # GET /anamnesis/1
  # GET /anamnesis/1.json
  def show
  end

  # GET /anamnesis/new
  def new
    @anamnesi = Anamnesi.new
  end

  # GET /anamnesis/1/edit
  def edit
  end

  # POST /anamnesis
  # POST /anamnesis.json
  def create
    @anamnesi = Anamnesi.new(anamnesi_params)

    respond_to do |format|
      if @anamnesi.save
        format.html { redirect_to @anamnesi, notice: 'Anamnesi was successfully created.' }
        format.json { render :show, status: :created, location: @anamnesi }
      else
        format.html { render :new }
        format.json { render json: @anamnesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anamnesis/1
  # PATCH/PUT /anamnesis/1.json
  def update
    respond_to do |format|
      if @anamnesi.update(anamnesi_params)
        format.html { redirect_to @anamnesi, notice: 'Anamnesi was successfully updated.' }
        format.json { render :show, status: :ok, location: @anamnesi }
      else
        format.html { render :edit }
        format.json { render json: @anamnesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anamnesis/1
  # DELETE /anamnesis/1.json
  def destroy
    @anamnesi.destroy
    respond_to do |format|
      format.html { redirect_to anamnesis_url, notice: 'Anamnesi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anamnesi
      @anamnesi = Anamnesi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anamnesi_params
      params.require(:anamnesi).permit(:queixa_principal, :como_aconteceu, :data_inicio, :patient_id)
    end
end
