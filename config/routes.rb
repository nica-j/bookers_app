Rails.application.routes.draw do
  get 'books/new'
  post 'books/new' => 'books#create'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get '/top' => 'homes#top'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # GET：リソースの取得
  # POST：リソースの更新、リソースへのデータ追加 など
  # DELETE：リソースの削除

end
