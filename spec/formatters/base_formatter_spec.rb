require "giff"

describe Giff::Formatters::BaseFormatter do
  describe "#format_output" do
    it "removes git-diff cruft from output" do
      diff_output = File.read(File.expand_path("../../fixtures/diff_output.txt", __FILE__))
      diff        = mock(:diff, diff: diff_output)
      formatter   = described_class.new(diff)

      expect(formatter.format_output).to eq("Hello [-Alice-]{+Bob+}")
    end
  end
end

