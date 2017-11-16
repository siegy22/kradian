require "kradian/version"
require "kradian/steam"
require "kradian/discord"
require "dotenv"

GEM_ROOT = File.expand_path("..", __dir__)
Dotenv.load(GEM_ROOT + "/.env")

module Kradian
  STEAM_ID = "76561198132213543"
  DISCORD_ID = "117681046220308485"
end
