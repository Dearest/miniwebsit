class PaymentRecordsPdfController < ApplicationController
  def show
    @records = Record.where(name: params[:name])
    @filename = "#{params[:name]}_payment_records.pdf"
    render 'payment_records_pdf.pdf.prawn'
  end
end
