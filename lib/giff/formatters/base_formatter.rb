module Giff::Formatters
  class BaseFormatter
    def initialize(diff)
      @diff = diff
    end

    def format_output
      clean_command_output(@diff.diff)
    end

    def self.format_output(diff)
      new(diff).format_output
    end

    private

    def clean_command_output(output)
      output.split("\n")
            .reject { |line| line.match(/^(\+\+\+|---|@@|diff|index)/) }
            .join("\n")
    end
  end
end

