class InfomationsController < ApplicationController
  def index
    @infomations = Infomation.all.order(created_at: 'DESC').limit(20)
    @infomation = Infomation.new
  end

  def create
    @infomation = Infomation.new(infomation_params)
    if @infomation.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    infomation = Infomation.find(params[:id])
    infomation.destroy
    redirect_to root_path
  end

  private

  def infomation_params
    params.require(:infomation).permit(:text).merge(user_id: current_user.id)
  end
end
