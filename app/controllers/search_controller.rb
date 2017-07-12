class SearchController < ApplicationController
  def index
    conn = Faraday.new("https://api.propublica.org/congress/v1/members/house/#{params[:state]}/current.json")
    response = conn.get do |req|
      req.headers["X-API-Key"] = ENV['propublica_key']
    end
    @results = JSON.parse(response.body)["results"]
  end
end
