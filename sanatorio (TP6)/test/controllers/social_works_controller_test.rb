require 'test_helper'

class SocialWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_work = social_works(:one)
  end

  test "should get index" do
    get social_works_url
    assert_response :success
  end

  test "should get new" do
    get new_social_work_url
    assert_response :success
  end

  test "should create social_work" do
    assert_difference('SocialWork.count') do
      post social_works_url, params: { social_work: { discount: @social_work.discount, name: @social_work.name } }
    end

    assert_redirected_to social_work_url(SocialWork.last)
  end

  test "should show social_work" do
    get social_work_url(@social_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_work_url(@social_work)
    assert_response :success
  end

  test "should update social_work" do
    patch social_work_url(@social_work), params: { social_work: { discount: @social_work.discount, name: @social_work.name } }
    assert_redirected_to social_work_url(@social_work)
  end

  test "should destroy social_work" do
    assert_difference('SocialWork.count', -1) do
      delete social_work_url(@social_work)
    end

    assert_redirected_to social_works_url
  end
end
