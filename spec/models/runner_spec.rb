require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Runner do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :sex => "value for sex",
      :birthday => Date.today,
      :cpf => "value for cpf",
      :phone => "value for phone",
      :cel => "value for cel",
      :nick => "value for nick",
      :email => "value for email"
    }
  end

  it "should create a new instance given valid attributes" do
    Runner.create!(@valid_attributes)
  end
end
