Mockup::Application.routes.draw do
  root :to => 'high_voltage/pages#show', :id => 'front'
  match '/page', to: 'high_voltage/pages#show', id: 'about'
end
