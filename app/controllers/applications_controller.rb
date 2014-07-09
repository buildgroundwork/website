class ApplicationsController < ApplicationController
  respond_to :html

  def new
    @application = Application.new
    respond_with(@application)
  end
end

