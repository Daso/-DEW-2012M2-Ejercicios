class Tweet < ActiveRecord::Base

Twitter.configure do |config|
  config.consumer_key = '8ohKDAxLPzycMrJ8myT8mQ' 
  config.consumer_secret = 'Tptace33ZNTnTcLx1QQXwkeXkS9gWV82w6UMBA51Y'
  config.oauth_token = '313482608-SvCgWS869NKqbyQnr04t1uC1V6AdfgpmSOvskmA'
  config.oauth_token_secret = 'tQBycAI7p134gI1IOueEcgcMQrPHWgCm6H8GuQZmXFg'
end

  def read_message 
  	return "sin user" if self.user.blank?
  	Twitter.user_timeline(self.user).first.text
  end

end
