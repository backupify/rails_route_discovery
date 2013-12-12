Rails.application.routes.draw do

  scope :module => 'rails_route_discovery' do
    get '/discovery', :to => 'discovery#index'
  end

end
