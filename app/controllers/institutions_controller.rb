class InstitutionsController < ApplicationController
  def index
  end

  def search
    @institutions = Institution.search_by_city(params[:city])
  end

  def new
    @institution = Institution.new
  end

  def show
    @institution = Institution.find(params[:id])
  end

  def create
    @institution = Institution.new(institution_params)
    if @institution.save
      redirect_to @institution
    else
      flash.now[:error] = 'Por favor, verifique os campos obrigatórios'
      render 'new'
    end
  end

  private

  def institution_params
    params.require(:institution).permit(:name, :email, :address, :neighborhood,
                                        :postal_code, :city, :state, :phone,
                                        :contact, :work, :site)
  end
end
