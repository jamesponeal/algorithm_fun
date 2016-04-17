require_relative 'divisible_digits'

describe "divisible_digits" do

  it "returns 3 when given 111" do
    expect(divisible_digits(111)).to eq 3
  end

  it "returns 2 when given 12" do
    expect(divisible_digits(12)).to eq 2
  end

  it "returns 3 when given 1012" do
    expect(divisible_digits(1012)).to eq 3
  end

end