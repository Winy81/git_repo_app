Rails.application.routes.draw do

  root 'repositories#search'
  post 'repositories/search', to: 'repositories#search'

end
