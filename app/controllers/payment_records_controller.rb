class PaymentRecordsController < ApplicationController
  def index
    @name = params[:name] || cookies[:name]
    @records = Record.where(name: params[:name])
    @total = @records.sum(:price)
    cookies[:name] = @name
    render 'index'
  end

  def create
    if params[:record][:name].blank? || params[:record][:item_name].blank? || params[:record][:price].blank?
      flash[:notice] = '请填写必要信息'
    else
      Record.create(params.require(:record).permit(:name, :item_name, :price))
    end
    redirect_to payment_records_path(name: params[:record][:name])
  end
end
