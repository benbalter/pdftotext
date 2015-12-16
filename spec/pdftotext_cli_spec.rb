require 'spec_helper'

describe Pdftotext::CLI do
  it "knows the bin path" do
    expect(subject.send(:bin_path)).to match(/\/pdftotext\z/)
  end

  it "converts options to args" do
    options = {:foo => true, :bar => false, :page => 1}
    args = subject.send(:options_to_args, options)
    expect(args).to eql(["-foo", "-page 1"])
  end

  it "runs a command" do
    output = subject.run_command "v" => true
    expect(output).to match(/\Apdftotext version \d+\.\d+\.\d+/)
  end
end
