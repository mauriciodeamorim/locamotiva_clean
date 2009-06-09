require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Atleta do
  before(:each) do
    @valid_attributes = {
    :name => "Primeiro nome",
    :cpf => "12345678910",
    :celular => 12345678
    }
  @Atleta = Atleta.new
  end


 after(:each) do
   @Atleta.destroy unless @Atleta.new_record?
 end

 after(:all) do
   Atleta.destroy_all
 end

  it "should create a new instance given valid attributes" do
    Atleta.create!(@valid_attributes)
  end

  it "should be not valid without name" do
    @Atleta.name.should_be == nil
    @Atleta.should_not be_valid
  end

end

