require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/results/index" do
  before(:each) do
    render 'results/index'
  end
  
  # it "should tell you where to find the file" do
  #     response.should have_tag('p', %r[Find me in app/views/results/index])
  #   end
end
