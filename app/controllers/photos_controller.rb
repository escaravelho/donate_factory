class PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    institution = Institution.find(params[:institution_id])

    if @photo.save
      binding.pry
      institution.photos << @photo
      flash[:success] = 'Doação registrada com sucesso.'
      redirect_to @photo.institution
    else
      flash[:error] = 'Não foi possível salvar sua foto.'
      render :new
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:image)
  end
end
