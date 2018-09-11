# frozen_string_literal: true

module PacketComms
  module Generator
    class OperatorsGenerator < BaseGenerator
      def generate
        operators
      end

      private

      def operators
        @operators ||= configuration.operators
      end
    end
  end
end
