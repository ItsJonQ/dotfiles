#!/usr/bin/env ruby

require "json"
require "net/http"
require "pp"

uri = URI("https://api.github.com/search/repositories?q=seed+user:helpscout&per_page=300")
response = JSON.parse(Net::HTTP.get(uri))

repos = response["items"].inject({}) do |list, (repo)|
  issues = repo["open_issues_count"]
  if issues and issues > 0
    list[repo["name"]] = {
      issues: issues,
      url: repo["html_url"],
    }
  end
  list
end

puts ""
repos.each do |r|
  puts r
end
puts ""
