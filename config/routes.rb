Rails.application.routes.draw do
  namespace :api, defaults: {format: "json"} do 
    namespace :v1 do 
      resources :uufs, only: [] do
        collection do
          get "date/:date" , to: 'uufs#show'
          get "name/:name" , to: 'clients#show'
        end
      end
    end
  end
end
