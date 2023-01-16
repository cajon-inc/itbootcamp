require 'listen'
require 'fileutils'
require 'rubygems'
require 'rbconfig'

def os
  @os ||= (
    host_os = RbConfig::CONFIG['host_os']
    case host_os
    # TODO: Windows support
    # when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
    #   :win
    when /darwin|mac os/
      :osx
    else
      :linux
    end
  )
end

listener = Listen.to(Gem.bindir(Gem.dir), only: /^ngrok$/) do |modified, added|
  old_bin = (modified + added).first
  new_bin = File.expand_path("../../vendor/ngrok-#{os}", __FILE__)

  FileUtils.cp new_bin, old_bin
  exit
end
listener.start
sleep