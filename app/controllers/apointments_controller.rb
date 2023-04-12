class ApointmentsController < ApplicationController
  before_action :set_apointment, only: %i[ show edit update destroy ]

  # GET /apointments/1 or /apointments/1.json
  def show
  end

  # GET /apointments/new
  def new
    @apointment = Apointment.new
    @apointment_type = ApointmentType.find_by(name: params[:apointment_type])
  end

  # GET /apointments/1/edit
  def edit
  end

  # POST /apointments or /apointments.json
  def create
    @apointment = Apointment.new(apointment_params)
    @apointment_type = ApointmentType.find(params[:apointment][:apointment_type_id])

    respond_to do |format|
      if @apointment.save
        unless @apointment_type.payment_required?
          @apointment.approved!
        end
        format.html { redirect_to root_path, notice: "Apointment was successfully created." }
        format.json { render :show, status: :created, location: @apointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apointments/1 or /apointments/1.json
  def update
    respond_to do |format|
      if @apointment.update(apointment_params)
        format.html { redirect_to root_path, notice: "Apointment was successfully updated." }
        format.json { render :show, status: :ok, location: @apointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apointments/1 or /apointments/1.json
  def destroy
    @apointment.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Apointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apointment
      @apointment = Apointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apointment_params
      params.require(:apointment).permit(:apointment_type_id, :status, :name, :email, :start_at, :end_at, :notes)
    end
end
