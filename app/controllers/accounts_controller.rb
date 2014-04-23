class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
    flash[:notice] = 'Account added'
    redirect account_path(@account)
    else
    render 'new'
    end
  end



end
