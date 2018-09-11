# frozen_string_literal: true

module PacketComms
  module Models
    class Packet
      attr_reader :header, :operand, :operator, :accumulator

      def initialize(header, operand, operator, accumulator)
        @header      = header
        @operand     = operand
        @operator    = operator
        @accumulator = accumulator
      end

      def operate(operand)
        case @operator
        when "ADD"
          operand + @operand
        when "SUB"
          operand - @operand
        when "MUL"
          operand * @operand
        else
          raise ArgumentError, "'#{@operator}' not supported"
        end
      end

      def to_s
        [
          "2=#{@operator}",
          "3=#{@operand}",
          "5=#{@accumulator}"
        ].
          shuffle.
          unshift("8=#{@header}").
          join("|")
      end
    end
  end
end
