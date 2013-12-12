class RoutesJSONFormatterTest < ActiveSupport::TestCase

  setup do
    @formatter = RailsRouteDiscovery::RoutesJSONFormatter.new
  end

  context '#header' do

    should 'be defined' do
      assert @formatter.respond_to?(:header), 'Expected interface contract method #header to be defined'
    end

  end

  context '#no_routes' do

    should 'be defined' do
      assert @formatter.respond_to?(:no_routes), 'Expected interface contract method #no_routes to be defined'
    end

    should 'return an empty json object' do
      assert_equal '{}', @formatter.no_routes
    end

  end

  context 'result' do

    should 'be defined' do
      assert @formatter.respond_to?(:result), 'Expected interface contract method #result to be defined'
    end

    should 'return JSON encoded routes hash' do
      @formatter.instance_variable_set(:@routes, {:root => 'bad_example'})
      assert_equal '{"root":"bad_example"}', @formatter.result
    end

  end

  context 'section' do

    should 'be defined' do
      assert @formatter.respond_to?(:section), 'Expected interface contract method #section to be defined'
    end

    should 'add section routes to @routes' do
      @formatter.section([{:name => 'root', :reqs => [], :path => 'bad_example'}])

      assert_nil @formatter.instance_variable_get(:@routes)['root'][:reqs]
      assert_equal '{"root":{"path":"bad_example"}}', @formatter.result
    end

  end

  context '#section_title' do

    should 'be defined' do
      assert @formatter.respond_to?(:section_title), 'Expected interface contract method #section_title to be defined'
    end

  end

end
