class RelationshipsController < ApplicationController
  def create
    @probrem = Probrem.find(params[:probrem_id])

    # 既存の関連レコードが存在しない場合のみ保存する
    unless Relationship.exists?(user_id: @current_user.id, probrem_id: @probrem.id)
      @relationship = Relationship.new(user_id: @current_user.id, probrem_id: @probrem.id)
      if @relationship.save
        flash[:notice] = "変更しました。"
      end
    end
    redirect_to probrem_path(@probrem)
  end
  def destroy
    @probrem = Probrem.find(params[:probrem_id])

    # 既存の関連レコードが存在する場合のみ保存する
    if Relationship.exists?(user_id: @current_user.id, probrem_id: @probrem.id)
      @relationship = Relationship.find_by(user_id: @current_user.id, probrem_id: @probrem.id)
      if @relationship.destroy
        flash[:notice] = "変更しました。"
      end
    end
    redirect_to probrem_path(@probrem)
  end
end
