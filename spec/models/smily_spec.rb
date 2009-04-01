require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Smily do
  before(:each) do
    @valid_attributes = {
    }
  end

  it "should create a new instance given valid attributes" do
    smily = Smily.new(:mood => "glad")
    smily.value.should == 5
  end

  it "alle registrerte smilys skal gi et gjennomstintt" do
    Smily.create!(:mood => "glad")
    Smily.create!(:mood => "glad")
    Smily.create!(:mood => "glad")

    Smily.snitt.should == 5
  end

  describe "mood translation" do
    it "glad" do
      Smily.translate_mood(5).should == "glad"
    end
  end
end
