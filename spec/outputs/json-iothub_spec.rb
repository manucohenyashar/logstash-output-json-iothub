# encoding: utf-8
require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/json-iothub"
require "logstash/codecs/plain"
require "logstash/event"

describe LogStash::Outputs::Iothub do
  #let(:settings)
  let(:sample_event) { LogStash::Event.new }
  let(:output) { LogStash::Outputs::Iothub.new({
    "connection_string" => "{set your iot hub connection string}",
  }) }

  before do
    output.register
  end

  after do
    output.close
  end

  describe "receive message" do
    subject { output.receive(sample_event) }

    it "returns a string" do
      expect(subject).to eq("Event received")
    end
  end
end
