# frozen_string_literal: true

module PacketComms
  module Generator
    class OperandsGenerator < BaseGenerator
      def generate
        operands
      end

      private

      def operands
        @operands ||= (0..operand_ceiling).to_a
      end

      def operand_ceiling
        @operand_ceiling ||= configuration.operand_ceiling
      end
    end
  end
end
