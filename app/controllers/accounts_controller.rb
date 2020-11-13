class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.create(account_params)
    if @account.save
      flash[:success] = 'Account create successfully'
      redirect_to new_account_path
    else
      render :new
    end
  end
 

  private
  def account_params
    params.require(:account).permit(:user_id, :amount, :discount, :previous_balance, :comments, :transaction_type)
  end
end