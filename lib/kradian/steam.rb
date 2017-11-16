require 'steam-api'

module Kradian
  module Steam
    extend self

    def current_name
      ::Steam::User.summary(Kradian::STEAM_ID)["personaname"]
    end
  end
end
