web: bundle exec rails server thin -p $PORT
worker: QUEUE=* bundle exec rake environment resque:work
clock: bundle exec clockwork app/clock.rb
