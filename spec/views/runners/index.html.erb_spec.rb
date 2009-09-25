require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/runners/index" do
  before(:each) do
    render 'runners/index'
  end

  it "should show the page with some frase" do
    response.should have_tag('p', %r[Área restrita.])
  end
end
