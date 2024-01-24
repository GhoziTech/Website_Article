require "application_system_test_case"

class SantrisTest < ApplicationSystemTestCase
  setup do
    @santri = santris(:one)
  end

  test "visiting the index" do
    visit santris_url
    assert_selector "h1", text: "Santris"
  end

  test "should create santri" do
    visit santris_url
    click_on "New santri"

    fill_in "Kelas", with: @santri.kelas
    fill_in "Nama", with: @santri.nama
    click_on "Create Santri"

    assert_text "Santri was successfully created"
    click_on "Back"
  end

  test "should update Santri" do
    visit santri_url(@santri)
    click_on "Edit this santri", match: :first

    fill_in "Kelas", with: @santri.kelas
    fill_in "Nama", with: @santri.nama
    click_on "Update Santri"

    assert_text "Santri was successfully updated"
    click_on "Back"
  end

  test "should destroy Santri" do
    visit santri_url(@santri)
    click_on "Destroy this santri", match: :first

    assert_text "Santri was successfully destroyed"
  end
end
