require "application_system_test_case"

class Admin::GamesTest < ApplicationSystemTestCase
  setup do
    @admin_game = admin_games(:one)
  end

  test "visiting the index" do
    visit admin_games_url
    assert_selector "h1", text: "Games"
  end

  test "should create game" do
    visit admin_games_url
    click_on "New game"

    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "should update Game" do
    visit admin_game_url(@admin_game)
    click_on "Edit this game", match: :first

    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "should destroy Game" do
    visit admin_game_url(@admin_game)
    click_on "Destroy this game", match: :first

    assert_text "Game was successfully destroyed"
  end
end
