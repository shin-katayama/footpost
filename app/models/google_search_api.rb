class GoogleSearchApi 
  require 'cgi'
  def self.search(search_word_org, limit)                                                                                                                                                                   
    search_word = CGI.escape(search_word_org)
    url = URI("http://ajax.googleapis.com/ajax/services/search/images?v=1.0&key=AIzaSyCYco6F1UzYt0crJ92KRe_B1aSpy3s4nwQ&q=#{search_word}&rsz=#{limit}")                                                                                      
    http = Net::HTTP.new(url.host)                                                                                                                                                                       
    response = http.get(url.request_uri)
    response_data = JSON.parse(response.body)
    if response_data['responseStatus'] == 403                                                                                                                                                            
      return image_list = nil
    end
    response_data
    # image_list = response_data['responseData']['results']
  end 
end 