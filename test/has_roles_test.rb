require_relative "test_helper"

module Roleup
  class HasRolesTest < MicroTest::Test

    before do
      class_with_roles = Class.new do
        include HasRoles
      end

      @obj_with_roles = class_with_roles.new
      @obj_with_roles.roles = :admin, :editor
    end

    test "assign roles" do
      assert @obj_with_roles.roles.to_a == [:admin, :editor]
    end

    test "has_role?" do
      assert @obj_with_roles.has_role?(:admin)
      assert @obj_with_roles.has_role?(:editor)
    end

  end
end
