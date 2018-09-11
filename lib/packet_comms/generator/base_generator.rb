# frozen_string_literal: true

module PacketComms
  module Generator
    class BaseGenerator
      attr_reader :configuration

      def initialize(configuration)
        @configuration = configuration
      end

      def generate
        raise NotImplementedError
      end
    end
  end
end
