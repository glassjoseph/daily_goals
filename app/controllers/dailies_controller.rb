class DailiesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @daily = Daily.new
    # 6.times do
      # @dailies << Daily.new
    # end
  end

  def create
    @daily = Daily.new(daily_params)
    @daily.save
    # binding.pry
    flash[:success] = "Goal Added"
    redirect_to user_path(params[:user_id])
  end

  def show
    @daily = Daily.find(params[:id])
  end

  def edit
    @daily = Daily.find(params[:id])
    @user = @daily.user
  end

  def update
    @daily = Daily.find(params[:id])
    @daily.update(daily_params)
    redirect_to user_daily_path(@daily)
  end




  def destroy
    # binding.pry
    @daily = Daily.find(params[:id])
    user = @daily.user
    @daily.destroy
    flash[:deleted] = "Goal Deleted"
    redirect_to user
  end



  private

  def daily_params
    params.require(:daily).permit(:goal, :user_id)
  end

end
