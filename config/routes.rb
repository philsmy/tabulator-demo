Rails.application.routes.draw do
  root 'ecom_orders#index'

  resources :ecom_orders do
    get 'table_data', on: :collection
  end

  get 'tabula_test/index'
  get 'tabula_test/table_data'
end
