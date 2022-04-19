require_relative "../lib/exo_01"

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(11)).to eq(false)
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(29)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
  end
end

describe " vérifie la méthode sum_of_3_or_5_multiples" do
  it "vérifie la méthode sum_of_3_or_5_multiples" do
      expect(sum_of_3_or_5_multiples(10)).to eq(23)
      expect(sum_of_3_or_5_multiples(11)).to eq(33)
      expect(sum_of_3_or_5_multiples(0)).to eq(0)
      expect(sum_of_3_or_5_multiples(3)).to eq(0)
  end

  it "vérifie le format d'entrée" do
      expect(sum_of_3_or_5_multiples("abc")).to eq("Je ne prends que des entiers naturels")
      expect(sum_of_3_or_5_multiples(true)).to eq("Je ne prends que des entiers naturels")
      expect(sum_of_3_or_5_multiples(1.5)).to eq("Je ne prends que des entiers naturels")
      expect(sum_of_3_or_5_multiples(-1)).to eq("Je ne prends que des entiers naturels")
  end
end