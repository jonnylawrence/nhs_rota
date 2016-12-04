# Load DSL and set up stages
# Load DSL and Setup Up Stages
require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/rvm'
#require 'capistrano/puma'

set :ssh_options, {:forward_agent => true}
#set :deploy_via, :copy

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
Dir.glob("lib/capistrano/tasks/*.rb").each { |r| import r }
