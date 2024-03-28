require 'httparty'
username = "mufeedvh"
url = "https://api.github.com/users/#{username}/repos"

response = HTTParty.get(url, headers: {"User-Agent" => "Request"})
repos = JSON.parse(response.body)

highest_starred = repos.max_by { |repo| repo["stargazers_count"] }

puts "Most starred repository:"
puts "Name of the repository: #{highest_starred["name"]}"
puts "Description about the repository: #{highest_starred["description"]}"
puts "Number of Stars: #{highest_starred["stargazers_count"]}"
puts "URL: #{highest_starred["html_url"]}"
