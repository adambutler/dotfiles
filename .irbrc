require "awesome_print"
require "irb/completion"
require "irb/ext/save-history"

IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

AwesomePrint.irb!
