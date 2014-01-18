require 'spec_helper'

describe "routing for Contact" do
  it "routing GET / to projects#index" do
    expect(get: '/projects').to route_to 'projects#index'
    expect(get: projects_path).to route_to 'projects#index'
  end

  it "routing POST / to projects#create" do
    expect(post: '/projects').to route_to 'projects#create'
    expect(post: projects_path).to route_to 'projects#create'
  end
  
  
end