# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
every 10.minutes do
  set :output, {:error => 'log/cron_error.log', :standard => 'log/cron.log'}
   command "cd /Users/yabuki-ryosuke/dev/shot-project && zsh && source ~/.zshrc && bundle exec ruby screen_shot.rb"
 end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
