require "forwardable"

module Roleup
  class List
    extend Forwardable
    include Enumerable
    def_delegators :inner_list, :each, :length, :size

    def initialize(*values)
      @inner_list = values.flatten.map { |value| standardize(value) }.uniq.sort
    end

    def include?(value)
      inner_list.include? standardize(value)
    end

    def push(value)
      return self if include?(value)
      inner_list << standardize(value)
    end

    alias_method :<<, :push

    def delete(value)
      inner_list.delete standardize(value)
    end

    protected

    attr_reader :inner_list

    def standardize(value)
      value.to_s.downcase.to_sym
    end
  end
end
