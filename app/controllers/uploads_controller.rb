class UploadsController < ApplicationController
  def new
    @upload = Upload.new
  end

  def create 
    @upload = Upload.create(upload_params)

    if @upload.save 
      render json: { message: "success" }, status: 200
    else
      render json: { error: @upload.errors.full_messages.join(',')}, status: 400
    end
  end

  def destroy
    @upload = Upload.find(params[:id])

    @upload.destroy
  end

  private
    def upload_params
      params.require(:upload).permit(:image)
    end
end
