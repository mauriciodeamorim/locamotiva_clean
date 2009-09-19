require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Result do
  before(:each) do
    @valid_attributes = {
      :start_number => "value for start_number",
      :category => "value for category",
      :team => "value for team",
      :liquid_time => Date.today,
      :official_time => Date.today,
      :class_general => 1,
      :class_sex => 1,
      :class_category => 1,
      :pace => Date.today,
      :substitute => "value for substitute"
    }
  end

  it "should create a new instance given valid attributes" do
    Result.create!(@valid_attributes)
  end
end
