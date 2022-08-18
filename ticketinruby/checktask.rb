require 'net/http'
require 'json' 

req['Authorization'] = "token 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"
uri = URI('https://api.github.com/users/jamuc/repos')
res = Net::HTTP:get(uri)

 
 require 'json' 
 uri = URI('https://api.github.com/users/jamuc/repos')
 req = Net::HTTP::Get.new(uri)

 req['Authorization'] = "token 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"

 res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http|
    http.request(req)
  }

 puts a = res.body
 puts JSON.generate(a)