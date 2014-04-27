class CompaniesController < ApplicationController

  def index
    @companies=Company.all
  end

  def new
    @company=Company.new
  end

  def create
    @company=Company.new(company_params)
    @company.total_donation = 0
    if @company.save
      
      flash[:notice] = 'Company added'
      redirect_to company_path(@company)
    else
      render 'new'
    end
  end

  def show
    @company=Company.find(params[:id])
  end

  def edit
    @company=Company.find(params[:id])
  end

  def update
    @company=Company.find(params[:id])
    if @company.update(company_params)
      flash[:notice] = 'Company updated.'
      redirect company_path(@company)
    else
      render 'new'
    end
  end

private
  def company_params
    params.require(:company).permit(:name, :short, :description)
  end

end
