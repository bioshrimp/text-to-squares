require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a new user is not an admin" do
    user = User.new
    assert user.is_admin? == false, "New user should not be an admin"
  end

  test "an admin user is recognised as an admin" do
    user = User.new(:name => "tyranja")
    assert user.is_admin? == true, "Tyranja should be our admin!"
  end

  test "a new user has no id" do
    user = User.new
    assert user.id == nil
  end

  test "a saved user has an id" do
    user = User.new
    user.save
    assert user.id != nil
  end
end

