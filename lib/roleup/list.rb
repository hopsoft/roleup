require "forwardable"

module Roleup
  class List
    extend Forwardable
    include Enumerable
    def_delegators :inner_list, :each

    def initialize(*values)
      @inner_list = values.map { |value| standardize(value) }.uniq.sort
    end

    def include?(value)
      inner_list.include? standardize(value)
    end

    protected

    attr_reader :inner_list

    def standardize(value)
      value.to_s.downcase.to_sym
    end
  end
end
