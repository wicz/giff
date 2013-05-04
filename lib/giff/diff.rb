require "tempfile"

module Giff
  class Diff
    def initialize(base, head)
      @base, @head = base, head
    end

    def to_s
      execute_command
    end

    private

    def create_tempfile(content)
      file = Tempfile.new("giff")
      file.print(content)
      file.close

      file
    end

    def clean_command_output(output)
      output.split("\n")
            .reject { |line| line.match(/^(\+\+\+|---|@@|diff|index)/) }
            .join("\n")
    end

    def execute_command
      base_file = create_tempfile(@base)
      head_file = create_tempfile(@head)
      output = %x(#{Giff.git_bin} diff #{Giff.default_options} #{base_file.path} #{head_file.path})

      clean_command_output(output)
    ensure
      base_file.unlink
      head_file.unlink
    end
  end
end

