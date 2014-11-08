require_relative "test_helper"

module Roleup
  class ListTest < MicroTest::Test

    before do
      @roles = List.new("Admin", "Editor", "Viewer")
    end

    test "empty intialization" do
      assert List.new.to_a.empty?
    end

    test "standardization" do
      assert @roles.to_a == [:admin, :editor, :viewer]
    end

    test "include?" do
      assert @roles.include?(:admin)
    end

    test "include? is case insensitive" do
      assert @roles.include?("EDITOR")
    end

  end
end
