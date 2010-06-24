require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Race do
  fixtures :races
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :stage => "value for stage",
      :date => Time.now,
      :place => "value for place",
      :distance => "value for distance",
      :url => "value for url"
    }

    @race = Race.new
  end

  it "should create a new instance given valid attributes" do
    Race.create!(@valid_attributes)
  end

  it "should not be valid when empty" do
    Race.new.should_not be_valid
  end

  ['Name', 'Date', 'Distance'].each do |field|
    it "should require #{field}" do
      @race.should_not be_valid
#     @race.errors.full_messages.should include("#{field} #{I18n.translate("activerecord.erros.messages.blank")}")
      @race.errors.full_messages.should include("#{field} #{"can't be blank"}")
    end
  end

  it "should not be valid if name greater than 70 characters" do
    races(:one).name = "a" * 71
    races(:one).should_not be_valid
    races(:one).errors.full_messages.should include("Name greater than 70 characters." )
  end
end

