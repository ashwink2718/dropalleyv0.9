class PartnersController < ApplicationController
  
  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)
    if @partner.save
      flash[:success] = "Partner has been registered succesfully"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def partner_params
      params.require(:partner).permit(:name, :email, :phone)
    end
end