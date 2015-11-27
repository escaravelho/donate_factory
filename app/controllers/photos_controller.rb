class PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    institution = Institution.find(params[:institution_id])
    if @photo.save
      institution.photos << @photo
      flash[:success] = 'Foto salva com sucesso.'
      redirect_to @photo.institution
    else
      render @photo.institution
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end
