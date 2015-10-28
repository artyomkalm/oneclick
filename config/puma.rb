root = "/var/www/smallbutterfly/current"

bind "unix:///var/www/smallbutterfly/current/tmp/smallbutterfly.sock"
bind 'tcp://0.0.0.0:3061'

daemonize true
stdout_redirect "#{root}/log/access.log", "#{root}/log/errors.log", true

environment ENV['RAILS_ENV'] || 'production'
pidfile '#{root}/tmp/smallbutterfly.pid'

threads 2, 16
workers 2