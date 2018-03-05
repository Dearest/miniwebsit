Rails.application.routes.draw do
  resources :payment_records, only: [:index, :create]
  resources :welcome, only: [:index]
  resources :payment_records_pdf, only: [:show], param: :name
  root to: 'welcome#index'
end
