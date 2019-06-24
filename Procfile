web: bundle exec puma -t ${PUMA_MIN_THREADS:-5}:${PUMA_MAX_THREADS:-5} -w ${PUMA_WORKERS:-2} -p $PORT -e ${RACK_ENV:-development}
worker: bundle exec sidekiq -c ${SIDEKIQ_WORKERS:-5} -q critical,2 -q default, -q mailers -v
web: bundle exec rackup config.ru -p $PORT
