require "tempfile"

module Giff
  class Diff
    attr_accessor :formatter

    def initialize(base, head)
      @base, @head  = base, head
      @formatter    = Giff.default_formatter
    end

    def diff
      execute_command
    end

    def to_s
      @formatter.format_output(self)
    end

    private

    def create_tempfile(content)
      file = Tempfile.new("giff")
      file.print(content)
      file.close

      file
    end

    def execute_command
      base_file = create_tempfile(@base)
      head_file = create_tempfile(@head)

      %x(#{Giff.git_bin} diff #{Giff.default_options} #{base_file.path} #{head_file.path})
    ensure
      base_file.unlink
      head_file.unlink
    end
  end
end

