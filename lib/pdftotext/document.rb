module Pdftotext
  class Document
    attr_reader :path

    def initialize(path)
      @path = File.expand_path(path)
    end

    def text(options={})
      Pdftotext.cli.run_command path, tempfile.path, options
      text = tempfile.read
      tempfile.close!
      text
    end

    def pages(options={})
      pages = text(options).split("\f")
      pages.each_with_index.map { |t,i| Page.new text: t, number: i+1 }
    end

    private

    def tempfile
      @tempfile ||= Tempfile.new(['pdftotext', '.txt'])
    end
  end
end
