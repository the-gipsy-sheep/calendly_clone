class UsersController < ApplicationController
  def show
    @user = User.find_by(apointment_link: params[:apointment_link])
  end
end
