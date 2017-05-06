Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
  post 'topics/create' => 'topics#create'
  post 'posts/create' => 'post#create', as: :post_create
end
