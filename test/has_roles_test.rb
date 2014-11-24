require_relative "test_helper"

module Roleup
  class HasRolesTest < PryTest::Test
    class User
      include HasRoles
    end

    before do
      @user = User.new
      @user.roles = :admin, :editor
    end

    test "assign roles" do
      assert @user.roles.to_a == [:admin, :editor]
    end

    test "has_role?" do
      assert @user.has_role?(:admin)
      assert @user.has_role?(:editor)
    end

    test "has_all_roles?" do
      assert @user.has_all_roles?(:admin, :EDITOR)
      assert !@user.has_all_roles?(:admin, :editor, :other)
    end

    test "has_one_role?" do
      assert @user.has_one_role?(:other, :editor, :VIEWER)
      assert !@user.has_one_role?(:other, :viewer)
    end

  end
end
