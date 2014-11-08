module Roleup
  module HasRoles
    attr_reader :roles

    def roles
      @roles ||= List.new
    end

    def set_roles(*roles)
      @roles = List.new(*roles)
    end

    def has_role?(role)
      roles.include? role
    end
  end
end
