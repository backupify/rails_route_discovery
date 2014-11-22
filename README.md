#RailsRouteDiscovery

Rails engine providing very basic discovery of application routes in JSON format.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_routes_discovery'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_routes_discovery

## Usage

In your config/routes.rb, either mount the rails_route_discovery engine to your
prefered path or use a scope with the module option to mount the discovery
controller directly:
```ruby
# config/routes.rb

Rails.application.routes.draw do

  # Mount the engine
  mount RailsRouteDiscovery::Engine, :at => '/discovery'

  # Or create a route to the discovery controller directly
  scope :module => 'rails_route_discovery' do
    get '/discovery', :to => 'discovery#index'
  end

end
```

Alternatively, you can create a new controller that inherits from
RailsRouteDiscovery::DiscoveryController to further customize behavior and
routing options:
```ruby
class CustomDiscoveryController < RailsRouteDiscovery::DiscoveryController

  def index
    # Authenticate user before allowing route discovery
    authenticate_user!

    # Do some other stuff

    # Render the routes JSON
    render_routes
  end

end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
