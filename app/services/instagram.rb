class Instagram
  class << self
    def media_from_gps(lat, lng)
      base_url = "https://api.instagram.com/v1/"
      url = base_url + "media/search?lat=#{lat}&lng=#{lng}&access_token=#{ENV['ACCESS_TOKEN']}"
      begin
        response = RestClient.get(url)
        media = JSON.parse(response.body)['data']
        return media
      rescue RestClient::ExceptionWithResponse => e
        # byebug
      end
    end
    # 2049109
    def mmedia_from_user()
      url2 = base_url + ""

    end
  end
end
