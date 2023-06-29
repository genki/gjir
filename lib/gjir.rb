# frozen_string_literal: true

require_relative "gjir/version"

PROC_NAME = "GoogleJapaneseInput"

# find pid of GoogleJapaneseInput
pid = `ps aux | grep #{PROC_NAME}\$ | grep -v grep | awk '{print $2}'`.chomp

# kill the process
puts "Restart #{PROC_NAME} (pid:#{pid}) process..."
`kill -9 #{pid}` unless pid.empty?
