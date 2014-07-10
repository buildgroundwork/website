class ApplicationsController < ApplicationController
  respond_to :html

  def new
    @application = Application.new
    respond_with(@application)
  end

  def create
    @application = Application.create(application_params)
    respond_with(@application, location: home_path)
  end

  private

  def application_params
    params.require(:application).permit(:name, :email)
  end
end

