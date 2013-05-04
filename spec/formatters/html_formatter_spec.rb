require "giff"

describe Giff::Formatters::HTMLFormatter do
  describe "#format_output" do
    it "formats output as html" do
      html_output = File.read(File.expand_path("../../fixtures/html_output.txt", __FILE__))
      formatter = described_class.new(mock(:diff))
      formatter.stub(clean_command_output: "Hello [-Alice-]{+Bob+}")

      expect(formatter.format_output).to eq(html_output)
    end
  end
end

