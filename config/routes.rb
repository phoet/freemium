Freemium::Application.routes.draw do
  mount Resque::Server, :at=> "/resque"
  
  root :to => "notes#index"
end
