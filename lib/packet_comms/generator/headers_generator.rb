# frozen_string_literal: true

module PacketComms
  module Generator
    class HeadersGenerator < BaseGenerator
      def generate
        headers
      end

      private

      def headers
        @headers ||= configuration.headers
      end
    end
  end
end
