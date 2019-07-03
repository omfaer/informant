class Api::V1::AppInfosController < ApplicationController
  before_action :set_app_info, only: [:show]
  before_action :is_record, only: [:is_malware, :p_hash, :permissions, :services, :receivers]

  # GET /app_infos/1
  def show
    render json: @app_info
  end

  def p_hash
    render json: @app_info
  end

  def is_malware
    render json: @app_info.classification
  end

  def permissions
    render json: @app_info.permissions
  end

  def services
    render json: @app_info.services
  end

  def receivers
    render json: @app_info.receivers
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_info
      @app_info = AppInfo.find(params[:id])
    end

    def is_record
      @app_info = AppInfo.find_by(params.permit(:p_hash))
      if @app_info.nil?
        not_found_error
      else
        return @app_info
      end
    end

    # Only allow a trusted parameter "white list" through.
    def app_info_params
      params.require(:app_info).permit(:app_name, :package_name, :p_hash)
    end

    def not_found_error
      render json: {status: :not_found, code: 404, message: "404 Not Found Error"}
    end
end
