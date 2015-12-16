module Pdftotext
  class Page
    attr_reader :text, :number

    def initialize(options)
      @text   = options[:text]
      @number = options[:number]
    end
  end
end
