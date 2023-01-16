# Adapted from https://github.com/SeleniumHQ/selenium/blob/master/rake-tasks/checks.rb
# and http://stackoverflow.com/questions/11784109/detecting-operating-systems-in-ruby

# require 'pathname'
# require 'fileutils'
require 'daemons'

task :default => [:build]

task :build do
  # raise Gem::Specification.find_by_name("ngrok").inspect
  fork do
    listener = File.expand_path('../../lib/listener.rb', __FILE__)
    Daemons.run(listener, ARGV: ['start'], log_output: true, backtrace: true)
  end
  sleep 2
end