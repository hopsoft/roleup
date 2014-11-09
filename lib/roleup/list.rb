require "forwardable"

module Roleup
  class List
    extend Forwardable
    include Enumerable
    def_delegators :inner_list, :each, :length, :size

    def initialize(*values)
      @inner_list = standardize_values(*values)
    end

    def include?(value)
      inner_list.include? standardize_value(value)
    end

    def push(value)
      return self if include?(value)
      inner_list << standardize_value(value)
    end

    alias_method :<<, :push

    def delete(value)
      inner_list.delete standardize_value(value)
    end

    def &(*values)
      inner_list & standardize_values(*values)
    end

    protected

    attr_reader :inner_list

    def standardize_value(value)
      value.to_s.downcase.to_sym
    end

    def standardize_values(*values)
      values.flatten.map { |value| standardize_value(value) }.uniq.sort
    end

  end
end
