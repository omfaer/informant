class Api::V1::UsersController < ApplicationController
	before_action :get_user, only: [:show]

  def show
    render json: @user
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      render :status => "200", :json => {:message => "success"}.to_json
    else
      render :status => "503", :json => {:message => "service unavailable"}.to_json
    end
  end

  private
    def get_user
      @user = User.find(params[:id])
    end

    def user_params
      params.permit(:ip, :country, :city)
    end
end