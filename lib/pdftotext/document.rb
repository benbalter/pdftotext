module Pdftotext
  class Document
    attr_reader :path

    def initialize(path)
      @path = File.expand_path(path)
    end

    def text(options={})
      Tempfile.open(['pdftotext', '.txt']) do |file|
        Pdftotext.cli.run_command path, file.path, options
        file.read.force_encoding("ISO-8859-1").encode("utf-8", replace: nil)
      end
    end

    def pages(options={})
      pages = text(options).split("\f")
      pages.each_with_index.map { |t,i| Page.new text: t, number: i+1 }
    end
  end
end
