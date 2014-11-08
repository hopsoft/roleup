require "forwardable"

module Roleup
  class List
    extend Forwardable
    include Enumerable
    def_delegators :inner_list, :each

    def initialize(*roles)
      @inner_list = roles.map { |role| standardize(role) }.uniq.sort
    end

    def include?(role)
      inner_list.include? standardize(role)
    end

    protected

    attr_reader :inner_list

    def standardize(role)
      role.to_s.downcase.to_sym
    end

  end
end
