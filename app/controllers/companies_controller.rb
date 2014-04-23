class CompaniesController < ApplicationController

  def index
    @companies=Company.all
  end

  def new
    @company=Company.new
  end

  def create
    @company=Company.new(company_params)
    if @company.save
    flash[:notice] = 'Company added'
    redirect company_path(@company)
    else
    render 'new'
    end
  end

  def show
    @company=Company.Find(params[:id])
  end

  def edit
    @company=Company.Find(params[:id])
  end

  def update
    @company=Company.Find(params[:id])
    if @company.update(company_params)
      flash[:notice] = 'Company updated.'
      redirect company_path(@company)
    else
      render 'new'
    end
  end

private
  def company_params
    params.require(:company).permit(:name)
  end

end
