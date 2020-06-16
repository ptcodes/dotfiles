require "rubygems"
require "irb/completion"
require "irb/ext/save-history"
require "irbtools"
require "ap"

IRB.conf[:SAVE_HISTORY] = 10_000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

