class HomeController < ApplicationController
  def index
    @wallet = Wallet.new
    if user_signed_in?
      redirect_to new_budget_path, :notice=> "Successfully authenticated! Now please create your first budget."
    end
  end
end
