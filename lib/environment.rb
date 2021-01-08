require_relative "./nhl_teams/version"

require 'bundler'
Bundler.require

require_relative "./nhl_teams/cli"
require_relative "./nhl_teams/api"
require_relative "./nhl_teams/team"