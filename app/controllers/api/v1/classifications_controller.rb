class Api::V1::ClassificationsController < ApplicationController
  before_action :get_classification, only: [:show]

  def show
    render json: @classification
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def get_classification
      @classification = Classification.find(params[:id])
    end
end
