require "giff/version"
require "giff/diff"
require "giff/formatters/base_formatter"
require "giff/formatters/html_formatter"

module Giff
  extend self

  def git_bin
    %x(which git).chomp
  end

  def default_options
    "--word-diff=plain      \
     --no-color             \
     --ignore-space-change  \
     --ignore-space-at-eol  \
     --ignore-all-space"
  end

  def default_formatter
    Giff::Formatters::BaseFormatter
  end
end

