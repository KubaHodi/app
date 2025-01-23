class SessionsController < ApplicationController
  skip_before_action :authorize
  after_action :find_user
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url, notice: "Logged In As #{user.name}"
    else
      redirect_to login_url, alert: "Invalid user or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Successfully Logged Out"
  end

  private
  def find_user
    $user_id_for_display = session[:user_id]
  end
end
