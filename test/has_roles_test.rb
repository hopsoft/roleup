require_relative "test_helper"

module Roleup
  class HasRolesTest < MicroTest::Test
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

    test "has_all?" do
      assert @user.has_all?(:admin, :editor)
      assert !@user.has_all?(:admin, :editor, :other)
    end

    test "has_one?" do
      assert @user.has_one?(:other, :editor, :viewer)
      assert !@user.has_one?(:other, :viewer)
    end

  end
end
