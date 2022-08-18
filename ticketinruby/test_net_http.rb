
#TASK-1
require 'net/http'

uri = URI('https://raw.githubusercontent.com/github/docs/main/content/site-policy/github-terms/github-event-code-of-conduct.md')
res = Net::HTTP.get(uri)
puts res 

# req = Net::HTTP::Get.new(uri)
# req['Accept'] = "application/vnd.github+json"
# req['Authorization'] = "token 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"
#
# res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http|
#   http.request(req)
# }
#
# puts res.body

puts "TASK-2"

require 'json' 
uri = URI('https://api.github.com/users/jamuc/repos')
req = Net::HTTP::Get.new(uri)

req['Authorization'] = "token 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"

res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http|
   http.request(req)
 }

puts a = res.body
puts JSON.generate(a)

puts "TASK-3"

# uri = URI('https://api.github.com/amahi19/repos')
# req = Net::HTTP::Post.new(uri)
#
#
# req['Authorization'] = "token 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"
# user = {
#         "name": "MyPostmanRuby",
#         "auto_init": true,
#         "private": true,
#         "gitignore_template": "nanoc"}
#
# res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http|
#   http.request(req)
# }
#
# puts res.body

require 'uri'

Net::HTTP.post(
      URI('https://api.github.com/user/repos'),
      {"name" => "MyPostmanRuby", "auto_init": true, "private": true, "gitignore_template": "nanoc"}.to_json,
      {"Authorization" => "token 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"}
              ) 

puts "TASK-4"

uri = URI('https://api.github.com/repos/jamuc/vim/git/refs/tags')

req = Net::HTTP::Get.new(uri)
req['Accept'] = "application/vnd.github+json"
req['Authorization'] = "token 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"

res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http|
  http.request(req)
}

puts res.body



#OPTION PARSER
require 'optparse'

options = {}
OptionParser.new do |parser|
  parser.on("-t", "--task TASKNAME",
            "The taskk to execute(1-4)") do |lib|
    puts "You required #{lib}!"
  end
end.parse!