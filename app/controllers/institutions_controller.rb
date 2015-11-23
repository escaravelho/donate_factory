class InstitutionsController < ApplicationController
  before_action :set_institution, only: [:show, :edit, :update]
  def index
  end

  def search
    @institutions = Institution.search_by_city(params[:city])
  end

  def new
    @institution = Institution.new
  end

  def show
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

  def edit
  end

  def update
    if @institution.update(institution_params)
      redirect_to @institution
    else
      flash[:error] = 'Por favor, verifique os campos obrigatórios'
      render :edit
    end
  end

  private

  def set_institution
    @institution = Institution.find(params[:id])
  end

  def institution_params
    params.require(:institution).permit(:name, :email, :address, :neighborhood,
                                        :postal_code, :city, :state, :phone,
                                        :contact, :work, :site, :avatar,
                                        :inactive)
  end
end
