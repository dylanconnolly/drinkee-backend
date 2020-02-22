class DrinkDataFormatter
  attr_reader :hash_data

  def initialize(drink_data_from_API)
    @hash_data = {
      name: drink_data_from_API["strDrink"],
      category: drink_data_from_API["strCategory"],
      alcoholic: drink_data_from_API["strAlcoholic"],
      glass: drink_data_from_API["strGlass"],
      instructions: drink_data_from_API["strInstructions"],
      image: drink_data_from_API["strDrinkThumb"],
      ingredient_1: drink_data_from_API["strIngredient1"],
      ingredient_2: drink_data_from_API["strIngredient2"],
      ingredient_3: drink_data_from_API["strIngredient3"],
      ingredient_4: drink_data_from_API["strIngredient4"],
      ingredient_5: drink_data_from_API["strIngredient5"],
      ingredient_6: drink_data_from_API["strIngredient6"],
      ingredient_7: drink_data_from_API["strIngredient7"],
      ingredient_8: drink_data_from_API["strIngredient8"],
      ingredient_9: drink_data_from_API["strIngredient9"],
      ingredient_10: drink_data_from_API["strIngredient10"],
      ingredient_11: drink_data_from_API["strIngredient11"],
      ingredient_12: drink_data_from_API["strIngredient12"],
      ingredient_13: drink_data_from_API["strIngredient13"],
      ingredient_14: drink_data_from_API["strIngredient14"],
      ingredient_15: drink_data_from_API["strIngredient15"],
      measurement_1: drink_data_from_API["strMeasure1"],
      measurement_2: drink_data_from_API["strMeasure2"],
      measurement_3: drink_data_from_API["strMeasure3"],
      measurement_4: drink_data_from_API["strMeasure4"],
      measurement_5: drink_data_from_API["strMeasure5"],
      measurement_6: drink_data_from_API["strMeasure6"],
      measurement_7: drink_data_from_API["strMeasure7"],
      measurement_8: drink_data_from_API["strMeasure8"],
      measurement_9: drink_data_from_API["strMeasure9"],
      measurement_10: drink_data_from_API["strMeasure10"],
      measurement_11: drink_data_from_API["strMeasure11"],
      measurement_12: drink_data_from_API["strMeasure12"],
      measurement_13: drink_data_from_API["strMeasure13"],
      measurement_14: drink_data_from_API["strMeasure14"],
      measurement_15: drink_data_from_API["strMeasure15"]
    }
  end
end
