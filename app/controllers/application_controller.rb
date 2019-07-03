class ApplicationController < ActionController::API
# around_action :handle_exceptions, if: proc { request.path.include?('/api') }
    # Catch exception and return JSON-formatted error
#  def handle_exceptions
#    begin
#      yield
#    rescue ActiveRecord::RecordNotFound => e
#      @status = 404
#      @message = 'Record not found'
#    rescue ActiveRecord::RecordInvalid => e
#      render_unprocessable_entity_response(e.record) && return
#    rescue ArgumentError => e
#      @status = 400
#-    rescue StandardError => e
#      @status = 500
#    rescue NoMethodError => e
#      @status = 500
#    end
#    json_response({ success: false, message: @message || e.class.to_s, errors: [{ detail: e.message }] }, @status) unless e.class == NilClass
#  end

rescue_from ActiveRecord::RecordNotFound, with: :not_found_error

rescue_from ActiveRecord::RecordInvalid, with: :invalid_error

protected

  def not_found_error
    render json: {status: :not_found, code: 404, message: "404 Not Found Error"}
  end

  def invalid_error
    render json: {status: :record_invalid, code: 422, message: "422 Record Invalid"}
  end

  def render_error
    render json: {status: :render_error, code: 500, message: "500 Internal Server Error"}
  end


end