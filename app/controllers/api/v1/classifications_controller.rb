class Api::V1::ClassificationsController < ApplicationController
  before_action :set_app_info, only: [:show]


    # GET /app_infos/1
  def show
    render json: @classification
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_info
      @classification = Classification.find(params[:id])
    end
end
