require 'test_helper'

class DiscoveryRouteTest < ActionDispatch::IntegrationTest

  context '/discovery' do

    should 'return the application routes in the json format' do
      expected_routes = {
        'discovery'=>
          {
            'verb' => 'GET',
           'path' => '/discovery(.:format)',
           'regexp' => '^\\/discovery(?:\\.([^\\/.?]+))?$'
         }
      }

      get '/discovery', :format => :json
      assert_equal ActiveSupport::JSON.encode(expected_routes), response.body
    end

    should 'return 406 not acceptable if non-json format requested' do
      get '/discovery', :format => :xml
      assert_response :not_acceptable
    end

  end

end

