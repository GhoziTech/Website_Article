class SantrisController < ApplicationController
  before_action :set_santri, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[ index show ]
  # GET /santris or /santris.json
  def index
    @santris = Santri.all
  end

  # GET /santris/1 or /santris/1.json
  def show
  end

  # GET /santris/new
  def new
    @santri = Santri.new
  end

  # GET /santris/1/edit
  def edit
  end

  # POST /santris or /santris.json
  def create
    @santri = Santri.new(santri_params)

    respond_to do |format|
      if @santri.save
        format.html { redirect_to santri_url(@santri), notice: "Santri was successfully created." }
        format.json { render :show, status: :created, location: @santri }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @santri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /santris/1 or /santris/1.json
  def update
    respond_to do |format|
      if @santri.update(santri_params)
        format.html { redirect_to santri_url(@santri), notice: "Santri was successfully updated." }
        format.json { render :show, status: :ok, location: @santri }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @santri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /santris/1 or /santris/1.json
  def destroy
    @santri.destroy!

    respond_to do |format|
      format.html { redirect_to santris_url, notice: "Santri was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_santri
      @santri = Santri.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def santri_params
      params.require(:santri).permit(:nama, :kelas)
    end
end
