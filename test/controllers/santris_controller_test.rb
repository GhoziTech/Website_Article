require "test_helper"

class SantrisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @santri = santris(:one)
  end

  test "should get index" do
    get santris_url
    assert_response :success
  end

  test "should get new" do
    get new_santri_url
    assert_response :success
  end

  test "should create santri" do
    assert_difference("Santri.count") do
      post santris_url, params: { santri: { kelas: @santri.kelas, nama: @santri.nama } }
    end

    assert_redirected_to santri_url(Santri.last)
  end

  test "should show santri" do
    get santri_url(@santri)
    assert_response :success
  end

  test "should get edit" do
    get edit_santri_url(@santri)
    assert_response :success
  end

  test "should update santri" do
    patch santri_url(@santri), params: { santri: { kelas: @santri.kelas, nama: @santri.nama } }
    assert_redirected_to santri_url(@santri)
  end

  test "should destroy santri" do
    assert_difference("Santri.count", -1) do
      delete santri_url(@santri)
    end

    assert_redirected_to santris_url
  end
end
