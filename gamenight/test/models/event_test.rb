require 'test_helper'

class EventTest < ActiveSupport::TestCase
  fixtures :events
  
  test "event attributes must not be empty" do
    event = Event.new
    assert event.invalid?
    assert event.errors[:name].any?
    assert event.errors[:date].any?
    assert event.errors[:location].any?
  end
  
  test "event must be in future" do
  end
  
  
end
