class RailsRouteDiscovery::DiscoveryController < ActionController::Base

  def index
    render_routes
  end

  protected
  def render_routes
    all_routes = Rails.application.routes.routes.to_a
    inspector = ActionDispatch::Routing::RoutesInspector.new(all_routes)
    routes = inspector.format(RailsRouteDiscovery::RoutesJSONFormatter.new)
    respond_to do |format|
      format.json { render :json => routes }
      format.all { render :nothing => true, :status => :not_acceptable }
    end
  end

end
