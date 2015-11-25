class DonationsController < ApplicationController
  def new
    @donation = Donation.new
    @donation.institution = Institution.find(params[:institution_id])
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.institution = Institution.find(params[:institution_id])
    if @donation.save
      flash[:success] = 'Doação registrada com sucesso.'
      redirect_to [@donation.institution, @donation]
    else
      flash[:error] = 'Não foi possível registrar sua doação.'
      render :new
    end
  end

  def show
    @donation = Donation.find(params[:id])
  end

  private

  def donation_params
    params.require(:donation).permit(:name, :mail, :phone, :type_of_donation,
                                     :institution_id)
  end
end
