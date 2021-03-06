Rails.application.routes.draw do
  
  resources :departamentos
  get "produtos/busca", to:"produtos#busca", as: :busca_produto
  #FORMA CURTA DE DECLARAR ROTAS
  resources :produtos, only:[:new, :create, :destroy, :edit, :update] 

  # FORMA PADRÃO DE DECLARAR ROTAS
  # delete "produtos/:id", to:"produtos#destroy", as: :produto
  # post "produtos", to:"produtos#create"
  # get "produtos/new", to: "produtos#new"
  root to: "produtos#index"
end
