class APApi

  def initialize
    raise 'AP API Token must be set' unless ENV['AP_API_TOKEN']
    @api_key = ENV['AP_API_TOKEN']
    @base_uri = 'http://api.ap.org/v2/reports/'
    @query_params = "?apikey=#{api_key}&format=json"
  end

  def reports
    report_index['reports'].map { |report| get(report['id']) }
  end

  def report_index
    get(base_uri)
  end

  private
    attr_reader :api_key, :base_uri, :query_params

    def get(url)
      data = HTTParty.get("#{url}#{query_params}")
      sleep 1 # avoids AP rate limit
      data.to_h #httparty objects aren't serializable / cacheable
    end
end
