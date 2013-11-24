require 'redis'

$redis = Redis.new(:timeout => 0)

thread = Thread.new do
$redis.subscribe('test') do |on|
  on.message do |channel, msg|
    puts '[DEBUG]'
    puts "#{channel} - #{msg}"
  end
end
end
thread.join