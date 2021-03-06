class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
 
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # 更新に成功した場合を扱う。
    else
      render 'edit'
    end
  end
  
end
