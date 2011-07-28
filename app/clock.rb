require File.join(File.dirname(__FILE__), '..', 'config', 'boot')
require File.join(File.dirname(__FILE__), '..', 'config', 'environment')

include Clockwork

handler do |job|
  puts "Running #{job}"
  puts Resque.enqueue(Note, rand(100))
end

every(50.seconds, 'freibieeeer!')

