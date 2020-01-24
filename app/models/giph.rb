require 'json'
require 'net/http'

class Giph
  def search(keywords)
    query = keywords.split(/,| /).join('+')
    response = get_api_response("http://api.giphy.com/v1/gifs/search?q=#{query}&rating=pg&api_key=#{ENV['GIPHY_API_KEY']}")
    response['data'].collect { |gif| gif['images']['original']['url'] }
  end

  def random(tags)
    tags = tags.split(/,| /).join('+')
    response = get_api_response("http://api.giphy.com/v1/gifs/random?tag=#{tags}&rating=pg&api_key=#{ENV['GIPHY_API_KEY']}")
    response['data']['image_url']
  end

  def translate(string)
    response = get_api_response("http://api.giphy.com/v1/gifs/translate?s=#{string}&rating=pg&api_key=#{ENV['GIPHY_API_KEY']}")
    response['data']['images']['original']['url']
  end

  def trending
    response = get_api_response("http://api.giphy.com/v1/gifs/trending?api_key=#{ENV['GIPHY_API_KEY']}")
    response['data'].collect { |gif| gif['images']['original']['url'] }
  end

  def get_api_response(endpoint)
    uri = URI(endpoint)
    api_response = Net::HTTP.get(uri)
    JSON.parse(api_response)
  end
end
