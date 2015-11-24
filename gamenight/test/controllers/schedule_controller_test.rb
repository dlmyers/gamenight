require 'test_helper'

class ScheduleControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#main .entry', 1
  end

end