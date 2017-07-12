class PropublicaService
  def initialize(attrs)
    @attrs = attrs
    @conn = Faraday.new("https://api.propublica.org")
  end

  def self.search_house_by_state(attrs)
    new(attrs).search_house_by_state
  end

  def search_house_by_state
    response = conn.get do |req|
      req.url "/congress/v1/members/house/#{attrs[:state]}/current.json"
      req.headers["X-API-Key"] = ENV['propublica_key']
    end
    JSON.parse(response.body)["results"].sort { |x,y| y["seniority"].to_i <=> x["seniority"].to_i }
  end

  private
    attr_reader :attrs, :conn
end
