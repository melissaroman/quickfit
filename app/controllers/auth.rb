# require 'httparty'
# #!/usr/bin/env ruby

# get '/health_auth' do
#     p params

#     options = {
#         body: {
#             grant_type: 'authorization_code',
#             code: params[:code],
#             client_id: '0fe5f7bd814b43aca93b9fea3569484b',
#             client_secret: 'ee1f585df85a417d83965a53f4eaa489',
#             redirect_uri: 'http://localhost:9393/user'
#         }
#     }

#     hg_response = HTTParty.post('https://runkeeper.com/apps/token', options)

#     p "THIS IS THE HTTPARTY POST RESPONSE"
#     p hg_response

#     token = hg_response['access_token']

#     p token
#     auth = "Bearer " + "#{token}"
#     options = {
#         body: {"Authorization" => auth, "Accept" => "application/vnd.com.runkeeper.User+json", "Host" => "api.runkeeper.com"}
#     }

#     me = HTTParty.get("http://api.runkeeper.com/user", options)

#     p me
# end



