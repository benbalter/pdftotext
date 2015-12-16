module Pdftotext
  class Document
    attr_reader :path

    def initialize(path)
      @path = File.expand_path(path)
    end

    def text(options={})
      Tempfile.open(['pdftotext', '.txt']) do |file|
        Pdftotext.cli.run_command path, file.path, options
        file.read
      end
    end

    def pages(options={})
      pages = text(options).split("\f")
      pages.each_with_index.map { |t,i| Page.new text: t, number: i+1 }
    end
  end
end
