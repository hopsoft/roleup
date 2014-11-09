module Roleup
  module HasRoles
    def roles
      @roles ||= List.new
    end

    def roles=(*roles)
      @roles = List.new(*roles)
    end

    def has_role?(role)
      roles.include? role
    end
  end
end
