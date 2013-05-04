require "giff/version"
require "giff/diff"

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
end

