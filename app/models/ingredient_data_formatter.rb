class IngredientDataFormatter
  attr_reader :hash_data

  def initialize(ingredient_api_data)
    @hash_data = {
      name: ingredient_api_data["strIngredient"].downcase,
      description: ingredient_api_data["strDescription"],
      # type: ingredient_api_data["strType"],
      alcohol: ingredient_api_data["strAlcohol"],
      abv: ingredient_api_data["strABV"]
    }
  end
end
