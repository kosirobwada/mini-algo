class RelationshipsController < ApplicationController
  def create
    @probrem = Probrem.find(params[:probrem_id])

    # 既存の関連レコードが存在しない場合のみ保存する
    unless Relationship.exists?(user_id: @current_user.id, probrem_id: @probrem.id)
      @relationship = Relationship.new(user_id: @current_user.id, probrem_id: @probrem.id)
      @relationship.save
    end

  end
end
