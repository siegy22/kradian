require "discordrb"

module Kradian
  module Discord
    extend self

    def update_username(username)
      bot = Discordrb::Bot.new(token: ENV["DISCORD_API_TOKEN"])
      bot.run :async
      loop do
        bot.server(ENV["DISCORD_SERVER_ID"])
           .member(Kradian::DISCORD_ID)
           .nick = username
        sleep 5 * 60 # 5 minutes
      end
    end
  end
end
