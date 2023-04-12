class ApointmentTypesController < ApplicationController
  before_action :set_apointment_type, only: %i[ show edit update destroy ]

  # GET /apointment_types or /apointment_types.json
  def index
    @apointment_types = current_user.apointment_types
  end

  # GET /apointment_types/1 or /apointment_types/1.json
  def show
  end

  # GET /apointment_types/new
  def new
    @apointment_type = current_user.apointment_types.new
  end

  # GET /apointment_types/1/edit
  def edit
  end

  # POST /apointment_types or /apointment_types.json
  def create
    @apointment_type = current_user.apointment_types.new(apointment_type_params.merge(user: current_user))

    respond_to do |format|
      if @apointment_type.save
        format.html { redirect_to root_path, notice: "Apointment type was successfully created." }
        format.json { render :show, status: :created, location: @apointment_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apointment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apointment_types/1 or /apointment_types/1.json
  def update
    respond_to do |format|
      if @apointment_type.update(apointment_type_params)
        format.html { redirect_to root_path, notice: "Apointment type was successfully updated." }
        format.json { render :show, status: :ok, location: @apointment_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apointment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apointment_types/1 or /apointment_types/1.json
  def destroy
    @apointment_type.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Apointment type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apointment_type
      @apointment_type = ApointmentType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apointment_type_params
      params.require(:apointment_type).permit(:name, :location, :description, :color, :duration, :payment_required, :price)
    end
end
