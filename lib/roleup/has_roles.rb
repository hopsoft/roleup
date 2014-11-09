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

    def has_all?(*roles)
      (self.roles & roles).size == roles.size
    end

    def has_one?(*roles)
      !(self.roles & roles).empty?
    end
  end
end
