class AppInfosController < ApplicationController
  before_action :set_app_info, only: [:show, :update, :destroy]

  # GET /app_infos
  # Production Öncesi silinecek.
  def index
    @app_infos = AppInfo.all

    render json: @app_infos
  end

  # GET /app_infos/1
  def show
    render json: @app_info
  end

  def p_hash
    @app_info = AppInfo.find_by(params.permit(:p_hash))
    render json: @app_info
  end

  # Fonksiyon ismi is malware olarak değiştirilebilir.
  def psr_hash
    @app_info = AppInfo.find_by(params.permit(:psr_hash)).classification.classification_name
    render json: @app_info
  end

  # POST /app_infos
  # TODO: Yeni ekleme işlemi kısıtlanacak. Sadece sunucudan gelen istekler karşılanacak. 
  # Bunun için Authentication ile User oluşturulacak.
  def create
    @app_info = AppInfo.new(app_info_params)

    if @app_info.save
      render json: @app_info, status: :created, location: @app_info
    else
      render json: @app_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /app_infos/1
  # Güncelleme yapılmayacak.
  # def update
  #  if @app_info.update(app_info_params)
  #    render json: @app_info
  #  else
  #    render json: @app_info.errors, status: :unprocessable_entity
  #  end
  # end

  # DELETE /app_infos/1
  # Asla silme yapılmayacak.
  # def destroy
  #   @app_info.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_info
      @app_info = AppInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def app_info_params
      params.require(:app_info).permit(:app_name, :package_name, :p_hash, :psr_hash)
    end
end
