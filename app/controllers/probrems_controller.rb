class ProbremsController < ApplicationController
  def index
    @probrems = Probrem.all
    @solved_probrem_id = Relationship.where(user:@current_user).pluck(:probrem_id)
  end
  def show
    @probrem = Probrem.find_by(id: params[:id])
    @solved_probrem_id = Relationship.where(user:@current_user).pluck(:probrem_id)
  end
end
