require 'test_helper'

class SponsorsControllerTest < ActionController::TestCase
  

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsors)
  end

  test "should show sponsor" do
    get :show, id: Sponsor.first.id
    assert_response :success
  end

  test "should make new sponsor" do
    get :new
    assert_response :success
  end

  test "should edit sponsor" do
    get :edit, id: Sponsor.first.id
    assert_response :success
  end

  test "should create sponsor" do
    assert_difference("Sponsor.count") do
      post :create, sponsor:{name: "hello", description: "greeting", url: "http://www.hi.com"}
    end
    assert_redirected_to sponsor_path(assigns(:sponsor))
  end

  test "sponsor should be updated" do
    sponsor = sponsors(:one)
    put :update, id: sponsor.id, sponsor:{name: "dog"}
    assert_equal "dog", sponsor.reload.name
    assert_redirected_to sponsors_path
  end

  test "should destroy sponsor" do
    assert_difference("Sponsor.count", -1) do
      delete :destroy, id: Sponsor.first.id
    end
  end





end
