require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get xml_dpi" do
    get :xml_dpi
    assert_response :success
  end

end
