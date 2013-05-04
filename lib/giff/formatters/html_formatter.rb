module Giff
  class Diff
    def to_html
      Giff::Formatters::HTMLFormatter.format_output(self)
    end
  end

  module Formatters
    class HTMLFormatter < BaseFormatter
      CHANGES = {
        "[-" => "<del>",
        "-]" => "</del>",
        "{+" => "<ins>",
        "+}" => "</ins>"
      }

      def format_output
        output = clean_command_output
        html_output = %Q(<div class="giff">)
        html_output << output.gsub(/\[-|-\]|{\+|\+}/i, CHANGES)
        html_output << "</div>\n"

        html_output
      end
    end
  end
end

