Rails.application.routes.draw do
  # get 'books/new'
  # post 'books' => 'books#create'
  # get 'books' => 'books#index', as: 'book'
  # get 'books/:id' => 'books#show', as: 'show_book'
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books
  #rails routes で名前表示がないのは、books_path
  # get '/top' => 'homes#top'
  get root to: 'homes#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # GET：リソースの取得
  # POST：リソースの更新、リソースへのデータ追加 など
  # DELETE：リソースの削除

end
