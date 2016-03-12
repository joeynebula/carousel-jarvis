module Lita
  module Handlers
    class Agreeable < Handler

      client = Twitter::REST::Client.new do |twiter_config|
        twiter_config.consumer_key        = config.twiter_consumer_key
        twiter_config.consumer_secret     = config.twiter_consumer_secret
        twiter_config.access_token        = config.twiter_access_token
        twiter_config.access_token_secret = config.twiter_access_secret
      end
      # insert handler code here
      route(/^agree|agreeable|agreed\s+/,:agree, command: false)

      def agree(response)
        response.reply "http://gph.is/176YdyA"
      end

      Lita.register_handler(self)
    end
  end
end
