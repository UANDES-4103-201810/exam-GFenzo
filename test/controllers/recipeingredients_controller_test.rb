require 'test_helper'

class RecipeingredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipeingredient = recipeingredients(:one)
  end

  test "should get index" do
    get recipeingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_recipeingredient_url
    assert_response :success
  end

  test "should create recipeingredient" do
    assert_difference('Recipeingredient.count') do
      post recipeingredients_url, params: { recipeingredient: { ingredient: @recipeingredient.ingredient, recipe: @recipeingredient.recipe } }
    end

    assert_redirected_to recipeingredient_url(Recipeingredient.last)
  end

  test "should show recipeingredient" do
    get recipeingredient_url(@recipeingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipeingredient_url(@recipeingredient)
    assert_response :success
  end

  test "should update recipeingredient" do
    patch recipeingredient_url(@recipeingredient), params: { recipeingredient: { ingredient: @recipeingredient.ingredient, recipe: @recipeingredient.recipe } }
    assert_redirected_to recipeingredient_url(@recipeingredient)
  end

  test "should destroy recipeingredient" do
    assert_difference('Recipeingredient.count', -1) do
      delete recipeingredient_url(@recipeingredient)
    end

    assert_redirected_to recipeingredients_url
  end
end
