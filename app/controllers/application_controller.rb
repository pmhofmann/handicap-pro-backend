class ApplicationController < ActionController::API

    def issue_token(payload)
        
        JWT.encode(payload, ENV['RAILS_SECRET'])
       
      end 
      
      def decode_token(token)
     
        JWT.decode(token, ENV['RAILS_SECRET'])[0]
        
      end

      def get_token
        request.headers["Authorization"]
      end

      def current_player
        token = get_token
        decoded_token = decode_token(token)
        player = Player.find(decoded_token["player_id"])
        return player
      end
      
      def logged_in
        !!current_player
      end
    
    
end
