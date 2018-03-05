class WelcomeController < ApplicationController
  def index
    redirect_to payment_records_url(name: cookies[:name]) if cookies[:name]
  end
end
