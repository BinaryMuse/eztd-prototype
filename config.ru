require "bundler/setup"

require "serve"
require "./sass_functions"

root  = File.dirname(__FILE__)
pub   = File.join root, 'public'
views = File.join root, 'views'

run Rack::Cascade.new([
  Serve::RackAdapter.new(views),
  Serve::RackAdapter.new(root),
  Rack::Directory.new(pub)
])
