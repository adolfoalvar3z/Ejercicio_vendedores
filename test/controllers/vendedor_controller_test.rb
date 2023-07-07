require "test_helper"

class VendedorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vendedor_index_url
    assert_response :success
  end
end
