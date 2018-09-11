# frozen_string_literal: true

module PacketComms
  module Generator
    class PacketGenerator < BaseGenerator
      def initialize(
          header_generator,
          operand_generator,
          operator_generator,
          accumulator_generator
        )
        @header_generator      = header_generator
        @operand_generator     = operand_generator
        @operator_generator    = operator_generator
        @accumulator_generator = accumulator_generator
      end

      def generate
        packet
      end

      private

      def packet
        Models::Packet.new(
          @header_generator.generate.sample,
          @operand_generator.generate.sample,
          @operator_generator.generate.sample,
          @accumulator_generator.generate.sample
        )
      end
    end
  end
end
