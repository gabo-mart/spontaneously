module WelcomeHelper

  # url = "http://api.openweathermap.org/data/2.5/weather?q=Miami%20Beach%2CFL&appid=c38d29204353577f04f9a8b861e3c70e"
  # response = HTTParty.get(url)
  # temp = response['main']['temp']
  # description = response['weather'][0]['description']
  # weird_date_number = response['dt']
  # date = Time.at(weird_date_number)

  def temp
    url = "http://api.openweathermap.org/data/2.5/weather?q=Miami%20Beach%2CFL&appid=c38d29204353577f04f9a8b861e3c70e"
    response = HTTParty.get(url)
    temp = ((response['main']['temp']-273.15)*1.8000+32).round(2)
  end

  def description
    url = "http://api.openweathermap.org/data/2.5/weather?q=Miami%20Beach%2CFL&appid=c38d29204353577f04f9a8b861e3c70e"
    response = HTTParty.get(url)
    description = response['weather'][0]['description']
  end
end
