require 'test_helper'

class NewbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newbook = newbooks(:one)
  end

  test "should get index" do
    get newbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_newbook_url
    assert_response :success
  end

  test "should create newbook" do
    assert_difference('Newbook.count') do
      post newbooks_url, params: { newbook: { Body: @newbook.Body, Title: @newbook.Title } }
    end

    assert_redirected_to newbook_url(Newbook.last)
  end

  test "should show newbook" do
    get newbook_url(@newbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_newbook_url(@newbook)
    assert_response :success
  end

  test "should update newbook" do
    patch newbook_url(@newbook), params: { newbook: { Body: @newbook.Body, Title: @newbook.Title } }
    assert_redirected_to newbook_url(@newbook)
  end

  test "should destroy newbook" do
    assert_difference('Newbook.count', -1) do
      delete newbook_url(@newbook)
    end

    assert_redirected_to newbooks_url
  end
end
