class RailsRouteDiscovery::RoutesJSONFormatter

  def header(routes)
    # No header required
  end

  def initialize
    @routes = {}
  end

  def no_routes
    return ActiveSupport::JSON.encode({})
  end

  def result
    return ActiveSupport::JSON.encode(@routes)
  end

  def section(routes)
    routes.each do |route|
      route.delete(:reqs)
      @routes[route.delete(:name)] = route
    end
  end

  def section_title(title)
    # Section titles could be useful but haven't encountered any
  end

end
