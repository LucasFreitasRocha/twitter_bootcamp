class RelationshipsController < ApplicationController

  def create
    @user = User.find(params[:id])
    unless current_user.following? @user
        current_user.follow!(@user)
        redirect_to user_path(@user), notice: 'Usuário seguido com sucesso'
    else
        redirect_to user_path(@user), alert: 'Usuário já sendo seguido'
    end

  end

end
