require "spec_helper"

describe "#caesar_cipher" do
  it "shifts letters of both cases" do
    expect(caesar_cipher("aBc", 2)).to eq("cDe")
  end

  it "shifts over the end of the alphabet" do
    expect(caesar_cipher("xYz", 2)).to eq("zAb")
  end

  it "doesn't shift non-letters" do
    expect(caesar_cipher("Abc, a-b_c's!", 2)).to eq("Cde, c-d_e'u!")
  end

  it "shifts backwards when given a negative shift number" do
    expect(caesar_cipher("aBc", -2)).to eq("yZa")
  end

  it "loops properly when given a shift number of 26 or greater" do
    expect(caesar_cipher("aBc", 27)).to eq("bCd")
  end

  it "loops properly when given a shift number of -26 or less" do
    expect(caesar_cipher("aBc", -28)).to eq("yZa")
  end
end
