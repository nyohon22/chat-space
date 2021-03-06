class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(use_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def use_params
    params.require(:user).permit(:name,:email)
  end

end
