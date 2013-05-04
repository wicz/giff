require "giff/diff"

describe Giff::Diff do
  describe "#to_s" do
    it "returns diff of two strings in git-diff plain format" do
      s1 = "Hello Alice"
      s2 = "Hello Bob"
      diff = described_class.new(s1, s2)

      expect(diff.to_s).to eq("Hello [-Alice-]{+Bob+}")
    end
  end
end

