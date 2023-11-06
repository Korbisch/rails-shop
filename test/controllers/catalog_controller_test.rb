require "test_helper"

class CatalogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catalog_index_url
    assert_response :success
    assert_select 'nav a', minimum: 4
    assert_select 'main ul li', 2
    assert_select 'h2', 'Rails Test Product Title'
    assert_select 'p', 'Test product description'
    assert_select 'div', '$9.99'
  end
end
