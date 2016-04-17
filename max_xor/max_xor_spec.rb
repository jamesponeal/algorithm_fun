require_relative "max_xor"


describe "max_xor" do

  it "returns 7 when given 10 and 15" do
    expect(maxxor(10,15)).to eq 7
  end

  it "returns 15 when given 1 and 10" do
    expect(maxxor(1,10)).to eq 15
  end

  it "returns 1023 when given 65 and 898" do
    expect(maxxor(65,898)).to eq 1023
  end

  it "returns 1023 when given 187 and 1000" do
    expect(maxxor(187,1000)).to eq 1023
  end

  it "returns 1023 when given 1 and 1000" do
    expect(maxxor(1,1000)).to eq 1023
  end

end



