class SessionsController < ApplicationController
  def new
  end
  
  def create
    redirect_to sessions_path unless params[:name].present?
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name if session[:name].present?
  end
end
