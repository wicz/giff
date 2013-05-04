require "giff"

describe Giff::Diff do
  describe "#new" do
    it "initializes with default formatter" do
      diff = Giff::Diff.new("foo", "bar")

      expect(diff.formatter).to be(Giff.default_formatter)
    end
  end

  describe "#diff" do
    it "returns diff of two strings in git-diff plain format" do
      diff = described_class.new("Hello Alice", "Hello Bob")

      expect(diff.diff).to include("Hello [-Alice-]{+Bob+}")
    end
  end

  describe "#to_s" do
    it "delegates to formatter" do
      diff = described_class.new("foo", "bar")

      diff.formatter.should_receive(:format_output).with(diff)

      diff.to_s
    end
  end
end

