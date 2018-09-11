# frozen_string_literal: true

module PacketComms
  module Generator
    class AccumulatorsGenerator < BaseGenerator
      def generate
        accumulators
      end

      private

      def accumulators
        @accumulators ||= ("A".."Z").to_a.slice(0, number_of_accumulators)
      end

      def number_of_accumulators
        @number_of_accumulators ||= configuration.number_of_accumulators
      end
    end
  end
end
