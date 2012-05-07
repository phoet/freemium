web: bundle exec rails server thin -p $PORT
worker: bundle exec rake environment resque:work QUEUE=* 
clock: bundle exec clockwork app/clock.rb
