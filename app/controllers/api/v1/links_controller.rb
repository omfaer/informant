class Api::V1::LinksController < ApplicationController
  before_action :is_record, only: [:scan]
  
  def scan
  	render json: @link.attributes.merge({status: "found"})
  end

  private
    def is_record
      @link = Link.find_by(params.permit(:url))
      if @link.nil?
        not_found_error
      else
        return @link
      end
    end

	def not_found_error
      render json: {status: :not_found, code: 404, message: "404 Not Found Error"}
    end
end
