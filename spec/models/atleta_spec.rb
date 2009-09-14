require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Atleta do
  before(:each) do
    @valid_attributes = {
    :nome => "Primeiro nome",
    :cpf => "12345678910",
    :celular => 12345678
    }
  @atleta = Atleta.new
  end


 after(:each) do
   @atleta.destroy unless @atleta.new_record?
 end

 after(:all) do
   Atleta.destroy_all
 end

  it "should create a new instance given valid attributes" do
    Atleta.create!(@valid_attributes)
  end

  it "should be not valid without name" do
    @atleta.nome = nil
    @atleta.should_not be_valid
  end

end

