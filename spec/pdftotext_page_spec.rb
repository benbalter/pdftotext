require 'spec_helper'

describe Pdftotext::Page do

  subject { Pdftotext::Page.new text: "foo", number: 10 }

  it "exposes the text" do
    expect(subject.text).to eql("foo")
  end

  it "exposes the page number" do
    expect(subject.number).to eql(10)
  end
end
