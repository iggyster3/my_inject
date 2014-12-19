require 'my_inject'

describe Array do

  it "can add numbers together" do
    expect([1,2,3,4].inject{|memory, item| memory + item}).to eq(10)
    expect([1,2,3,4].my_inject{|memory, item| memory + item}).to eq(10)

  end

end
