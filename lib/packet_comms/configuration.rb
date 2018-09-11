# frozen_string_literal: true

require "yaml"

module PacketComms
  class Configuration
    def number_of_packets
      yaml.fetch("number_of_packets")
    end

    def number_of_accumulators
      yaml.fetch("number_of_accumulators")
    end

    def operand_ceiling
      yaml.fetch("operand_ceiling")
    end

    def headers
      yaml.fetch("headers")
    end

    def operators
      yaml.fetch("operators")
    end

    private

    def config_file
      @config_file ||= File.join(PacketComms.root, "config/packet_comms.yml")
    end

    def yaml
      @yaml ||= YAML.load_file(config_file)["default"]
    end
  end
end
