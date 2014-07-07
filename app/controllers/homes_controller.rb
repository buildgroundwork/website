class HomesController < ApplicationController
  respond_to :html

  def show
    respond_with(1)
  end
end

