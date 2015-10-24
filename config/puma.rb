root = "/var/www/smallbutterfly/current"

bind "unix:///tmp/smallbutterfly.sock"

daemonize true
stdout_redirect "#{root}/log/access.log", "#{root}/log/errors.log", true

environment ENV['RAILS_ENV'] || 'production'
pidfile '/tmp/smallbutterfly.pid'

threads 2, 16
workers 2