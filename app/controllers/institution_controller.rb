class InstitutionController < ApplicationController
  def index
  end

  def search
    @institutions = Institution.search_by_city(params[:city])
  end
end
