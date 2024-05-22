class AtendantsController < ApplicationController
  before_action :set_atendant, only: %i[ show edit update destroy ]

  # GET /atendants or /atendants.json
  def index
    @atendants = Atendant.all
  end

  # GET /atendants/1 or /atendants/1.json
  def show
  end

  # GET /atendants/new
  def new
    @atendant = Atendant.new
  end

  # GET /atendants/1/edit
  def edit
  end

  # POST /atendants or /atendants.json
  def create
    @atendant = Atendant.new(atendant_params)

    respond_to do |format|
      if @atendant.save
        format.html { redirect_to atendant_url(@atendant), notice: "Atendant was successfully created." }
        format.json { render :show, status: :created, location: @atendant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atendant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atendants/1 or /atendants/1.json
  def update
    respond_to do |format|
      if @atendant.update(atendant_params)
        format.html { redirect_to atendant_url(@atendant), notice: "Atendant was successfully updated." }
        format.json { render :show, status: :ok, location: @atendant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atendant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atendants/1 or /atendants/1.json
  def destroy
    @atendant.destroy

    respond_to do |format|
      format.html { redirect_to atendants_url, notice: "Atendant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atendant
      @atendant = Atendant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atendant_params
      params.require(:atendant).permit(:name)
    end
end
