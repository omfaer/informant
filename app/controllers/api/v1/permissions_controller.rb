class Api::V1::PermissionsController < ApplicationController
  before_action :set_app_info, only: [:show]

  def index
    @permissions = Permission.all

    render json: @permissions
  end

    # GET /app_infos/1
  def show
    render json: @permission
  end

  def app_permissions
    @app_permissions = AppInfo.find_by(params.permit(:psr_hash)).permissions
    render json: @app_permissions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_info
      @permission = Permission.find(params[:id])
    end
end
