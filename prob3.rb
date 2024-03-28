require 'httparty'
area = "europe"
location = "copenhagen"
url = "http://worldtimeapi.org/api/timezone/#{area}/#{location}"
response = HTTParty.get(url, headers: {"User-Agent" => "Request"})
time_data = JSON.parse(response.body)

current_time = Time.parse(time_data["datetime"]).strftime("%Y-%m-%d %H:%M:%S")

puts "The current time in #{location} is #{current_time}"
