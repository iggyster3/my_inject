require 'my_inject'

describe Array do

  it "can add numbers together" do
    expect([1,2,3,4].inject{|memory, item| memory + item}).to eq(10)
    expect([1,2,3,4].my_inject{|memory, item| memory + item}).to eq(10)
  end

  it "can add other numbers together" do
    expect([1,2,3,4,5].inject{|memory, item| memory + item}).to eq(15)
    expect([1,2,3,4,5].my_inject{|memory, item| memory + item}).to eq(15)
  end

 it "can minus numbers together" do
    expect([1,2,3,4].inject{|memory, item| memory - item}).to eq(-8)
    expect([1,2,3,4].my_inject{|memory, item| memory - item}).to eq(-8)
  end

  it "can multiply numbers together" do
    expect([1,2,3,4].my_inject{|memory, item| memory * item}).to eq(24)
  end

  it "can add numbers together" do
  expect([1,2,3,4].my_inject(:+)).to eq(10)
  end

end
