class LeadsController < ApplicationController
  
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      flash[:success] = "We will contact you in just a bit."
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def lead_params
      params.require(:lead).permit(:company_name, :name, :email, :phone)
    end
end