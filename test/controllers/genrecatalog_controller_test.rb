require "test_helper"

class GenrecatalogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get genrecatalog_index_url
    assert_response :success
  end
end
