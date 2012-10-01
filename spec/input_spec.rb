require "./spec_helper.rb"
require "input.rb"

describe Input, 'is "exit"' do
  it "shold be exit? = true" do
    Input.new("exit").exit?.should be_true
  end
  
  it "shold be right? = true" do
    Input.new("exit").right?.should be_true
  end
end

describe Input, 'is "noexit"' do
  it "shold be exit? = false" do
    Input.new("noexit").exit?.should be_false
  end
  
  it "shold be right? = false" do
    Input.new("noexit").right?.should be_false
  end
end

describe Input, 'is "g"' do
  it "shold be gu? = true" do
    Input.new("g").gu?.should be_true
  end
  
  it "shold be right? = true" do
    Input.new("exit").right?.should be_true
  end
end

describe Input, 'is "hoge"' do
  it "shold be gu? = false" do
    Input.new("hoge").gu?.should be_false
  end
  
  it "shold be right? = false" do
    Input.new("hoge").right?.should be_false
  end
end

describe Input, 'is "c"' do
  it "shold be choki? = true" do
    Input.new("c").choki?.should be_true
  end
  
  it "shold be right? = true" do
    Input.new("exit").right?.should be_true
  end
end

describe Input, 'is "cc"' do
  it "shold be choki? = false" do
    Input.new("cc").choki?.should be_false
  end
  
  it "shold be right? = false" do
    Input.new("cc").right?.should be_false
  end
end

describe Input, 'is "p"' do
  it "shold be pa? = true" do
    Input.new("p").pa?.should be_true
  end
  
  it "shold be right? = true" do
    Input.new("exit").right?.should be_true
  end
end

describe Input, 'is "papa"' do
  it "shold be pa? = false" do
    Input.new("papa").pa?.should be_false
  end
  
  it "shold be right? = false" do
    Input.new("papa").right?.should be_false
  end
end


