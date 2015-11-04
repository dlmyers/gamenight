require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  fixtures :friends
  
  test "friend attributes must not be empty" do
    friend = Friend.new
    assert friend.invalid?
    assert friend.errors[:name].any?
    assert friend.errors[:email].any?
    assert friend.errors[:created_by].any?
  end
end
