class UserController < ApplicationController

  load_and_authorize_resource


  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email)
  end
end
