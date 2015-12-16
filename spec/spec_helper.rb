$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'pdftotext'

def fixture_path
  File.expand_path "./fixtures/pdf.pdf", File.dirname(__FILE__)
end
