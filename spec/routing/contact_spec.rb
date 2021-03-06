require 'spec_helper'

describe "routing for Contact" do
  it "routing GET / to contact#show" do
    expect(get: '/contact').to route_to 'contacts#show'
    expect(get: contact_path).to route_to 'contacts#show'
  end

  it "routing POST / to context#create" do
    expect(post: '/contact').to route_to 'contacts#create'
    expect(post: contact_path).to route_to 'contacts#create'
  end
end