# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

ROOT = File.expand_path(File.dirname(__FILE__) + '/..')
set :output, "#{ROOT}/log/cron_log.log"

every :day, :at => '10pm' do
  command "cd #{ROOT} && bundle exec ruby order.rb vamdt"
end
# Learn more: http://github.com/javan/whenever
