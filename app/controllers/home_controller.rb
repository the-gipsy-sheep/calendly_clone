class HomeController < ApplicationController
  def index
  end

  def dashboard
    @apointment_types = current_user.apointment_types
    @apointments = Apointment.where(apointment_type_id: current_user.apointment_type_ids)
  end
end
