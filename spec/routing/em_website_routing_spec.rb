require "rails_helper"

RSpec.describe EmWebsiteController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(:get => '/').to route_to('em_website#index')
    end
    it 'routes to #how_it_works' do
      expect(:get => '/how_it_works').to route_to('em_website#how_it_works')
    end
    it 'routes to #about_us' do
      expect(:get => '/about_us').to route_to('em_website#about_us')
    end
    it 'routes to #pricing' do
      expect(:get => '/pricing').to route_to('em_website#pricing')
    end
    it 'routes to #add_email' do
      expect(:post => '/add_email').to route_to('em_website#add_email')
    end
  end
end
