Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'reports#index'
  get 'reports/index'
  get 'reports/year'
  get 'reports/month'
  get 'reports/year_month'
end
