Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
 # ヘルスチェック
 get '/health_check', to: 'health_checks#index'# 記事一覧
 get '/blogs', to: 'blogs#index'# 記事詳細  
 get '/blogs/:id', to: 'blogs#show'# 記事作成
 post '/blogs', to: 'blogs#create'
  # Defines the root path route ("/")
  # root "posts#index"
end
