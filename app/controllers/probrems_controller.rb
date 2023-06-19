class ProbremsController < ApplicationController
  def index
    @probrems = Probrem.all
  end
  def show
    @probrem = Probrem.find_by(id: params[:id])
  end
end
