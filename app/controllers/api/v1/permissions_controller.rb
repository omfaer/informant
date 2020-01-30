class Api::V1::PermissionsController < ApplicationController
  before_action :get_permission, only: [:show]

  def show
    render json: @permission
  end

  def app_permissions
    @app_permissions = AppInfo.find_by(params.permit(:psr_hash)).permissions
    render json: @app_permissions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_permission
      @permission = Permission.find(params[:id])
    end
end
