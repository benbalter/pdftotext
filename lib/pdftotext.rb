require "cliver"
require "open3"
require "pdftotext/version"
require "pdftotext/document"
require "pdftotext/cli"
require "pdftotext/page"

module Pdftotext

  def self.text(path, options={})
    Document.new(path).text(options)
  end

  def self.pages(path, options={})
    Document.new(path).pages(options)
  end

  def self.cli
    @cli ||= CLI.new
  end
end
