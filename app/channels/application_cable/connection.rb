p '🐶 reading connection.rb...'
module ApplicationCable
  p '🐶 inside ApplicationCable module'
  class Connection < ActionCable::Connection::Base
    p '🐶 inside connection method for ActionCable class'
    identified_by :current_user

    def connect
      p '🐶starting in connect method in connection.rb'
      self.current_user = find_verified_user
      logger.add_tags 'ActionCable', current_user.id
      p(logger)
      p '🐶finished connect method'
    end

    protected

    def find_verified_user
      p '🐶I am in find_verified_user method....'
      if (verified_user = env['warden'].user)
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
