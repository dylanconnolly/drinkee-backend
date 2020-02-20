require 'faraday'
require 'pry'

class CocktailService
  def get_drinks(character)
    get_json("1/search.php?f=#{character}")
  end

  def conn
    connection = Faraday.new(url: "https://thecocktaildb.com/api/json/v1/") do
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body)
  end
end
