require "application_system_test_case"

class SnapshotsTest < ApplicationSystemTestCase
  setup do
    @snapshot = snapshots(:one)
  end

  test "visiting the index" do
    visit snapshots_url
    assert_selector "h1", text: "Snapshots"
  end

  test "creating a Snapshot" do
    visit snapshots_url
    click_on "New Snapshot"

    fill_in "Snapshot", with: @snapshot.snapshot_id
    click_on "Create Snapshot"

    assert_text "Snapshot was successfully created"
    click_on "Back"
  end

  test "updating a Snapshot" do
    visit snapshots_url
    click_on "Edit", match: :first

    fill_in "Snapshot", with: @snapshot.snapshot_id
    click_on "Update Snapshot"

    assert_text "Snapshot was successfully updated"
    click_on "Back"
  end

  test "destroying a Snapshot" do
    visit snapshots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Snapshot was successfully destroyed"
  end
end
