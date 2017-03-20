#!/usr/bin/env ruby

require "json"
require "net/http"
require "pp"

uri = URI("https://api.github.com/search/repositories?q=seed+user:helpscout&per_page=200")
response = JSON.parse(Net::HTTP.get(uri))

repos = response["items"].inject({}) do |list, (repo)|
  issues = repo["open_issues_count"]
  if issues and issues > 0
    list[repo["name"]] = issues
  end
  list
end

puts ""
pp(repos)
puts ""
