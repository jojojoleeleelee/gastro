require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    check "Cooked" if @recipe.cooked
    fill_in "Directions", with: @recipe.directions
    check "Favorite" if @recipe.favorite
    fill_in "Ingred items", with: @recipe.ingred_items
    fill_in "Ingredient", with: @recipe.ingredient_id
    fill_in "Pic url", with: @recipe.pic_url
    fill_in "Title", with: @recipe.title
    fill_in "User", with: @recipe.user_id
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    check "Cooked" if @recipe.cooked
    fill_in "Directions", with: @recipe.directions
    check "Favorite" if @recipe.favorite
    fill_in "Ingred items", with: @recipe.ingred_items
    fill_in "Ingredient", with: @recipe.ingredient_id
    fill_in "Pic url", with: @recipe.pic_url
    fill_in "Title", with: @recipe.title
    fill_in "User", with: @recipe.user_id
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end
