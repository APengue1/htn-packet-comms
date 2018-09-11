# frozen_string_literal: true

module PacketComms
  require "packet_comms/configuration"
  require "packet_comms/generator"
  require "packet_comms/models"

  class << self
    def root
      File.dirname(__dir__)
    end
  end

  class Driver
    def generate
      packets = []
      results = {}
      configuration.number_of_packets.times do
        packet = packet_generator.generate
        packets << packet
        results[packet.accumulator] ||= 0
        results[packet.accumulator] += packet.result
      end
      [results, packets]
    end

    def packet_generator
      @packet_generator ||= Generator::PacketGenerator.new(
        Generator::HeadersGenerator.new(configuration),
        Generator::OperandsGenerator.new(configuration),
        Generator::OperatorsGenerator.new(configuration),
        Generator::AccumulatorsGenerator.new(configuration),
      )
    end

    def configuration
      @configuration ||= PacketComms::Configuration.new
    end
  end
end
